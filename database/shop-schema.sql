create table public.shop_admins(user_id uuid primary key references auth.users(id));
alter table public.shop_admins enable row level security;
grant select on public.shop_admins to authenticated;
create policy own_admin on public.shop_admins for select to authenticated using(user_id=(select auth.uid()));
create table public.products(id text primary key, data jsonb not null, position integer not null default 0, visible boolean not null default true);
alter table public.products enable row level security;
grant select on public.products to anon,authenticated;
grant insert,update,delete on public.products to authenticated;
create policy public_products on public.products for select using(visible or exists(select 1 from public.shop_admins where user_id=(select auth.uid())));
create policy manage_products on public.products for all to authenticated using(exists(select 1 from public.shop_admins where user_id=(select auth.uid()))) with check(exists(select 1 from public.shop_admins where user_id=(select auth.uid())));
insert into storage.buckets(id,name,public,file_size_limit,allowed_mime_types) values('products','products',true,5242880,array['image/jpeg','image/png','image/webp']);
create policy upload_products on storage.objects for insert to authenticated with check(bucket_id='products' and exists(select 1 from public.shop_admins where user_id=(select auth.uid())));

revoke insert,update,delete on public.products from anon;
-- Admin membership is provisioned privately; credentials are never stored here.
