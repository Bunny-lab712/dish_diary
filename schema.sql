-- Run this once in Supabase: SQL Editor > New query > Run
create table if not exists public.diary (
  user_id uuid not null references auth.users(id) on delete cascade,
  id text not null,
  data jsonb not null,
  updated_at timestamptz not null default now(),
  primary key (user_id, id)
);

alter table public.diary enable row level security;

create policy "diary select own" on public.diary for select using (auth.uid() = user_id);
create policy "diary insert own" on public.diary for insert with check (auth.uid() = user_id);
create policy "diary update own" on public.diary for update using (auth.uid() = user_id) with check (auth.uid() = user_id);
create policy "diary delete own" on public.diary for delete using (auth.uid() = user_id);
