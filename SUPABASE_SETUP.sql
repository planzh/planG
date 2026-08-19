-- Run this once in Supabase → SQL Editor.
create table if not exists public.dashboard_state (
  user_id uuid primary key references auth.users(id) on delete cascade,
  data jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

alter table public.dashboard_state enable row level security;

drop policy if exists "Users can read their own dashboard" on public.dashboard_state;
create policy "Users can read their own dashboard"
on public.dashboard_state for select
using (auth.uid() = user_id);

drop policy if exists "Users can insert their own dashboard" on public.dashboard_state;
create policy "Users can insert their own dashboard"
on public.dashboard_state for insert
with check (auth.uid() = user_id);

drop policy if exists "Users can update their own dashboard" on public.dashboard_state;
create policy "Users can update their own dashboard"
on public.dashboard_state for update
using (auth.uid() = user_id)
with check (auth.uid() = user_id);
