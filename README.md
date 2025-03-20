## Local development and testing

### Starting database
- Start database `npx supabase start'
- Navigate to http://localhost:54323


### Creating migrations

- `mpx supabase migration new`
### Running migrations


- `npx supabase migration up`

### Restarting migrations

- `npx supabase db reset`



### Development guidelines

- Create a migration in the supabase/migrations repo.
- If a new table is created, it should have row level security enabled.
