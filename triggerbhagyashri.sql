create or replace trigger updateclient 
before update or delete on clientmaster
for each row
begin
insert into auit values(:old.srno,:old.name);
end;
/