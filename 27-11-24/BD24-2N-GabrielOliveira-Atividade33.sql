create table historico_salarial (
	id_historico serial primary key not null,
	id_cliente int not null references cliente(id_cliente),
	data_alteracao date not null,
	salario money not null
)

create or replace function atualizacao_salario() returns
trigger as $$ begin
  insert into historico_salarial(id_cliente, data_alteracao, salario)
  values (new.id_cliente, now(), new.salario);
return null;
end;
$$language plpgsql;

drop function atualizacao_salario cascade

create trigger atualiza_salario
after insert or update 
on cliente for each row 
execute function atualizacao_salario()

update cliente set salario = 4255.03 where id_cliente = 5

select * from historico_salarial
select * from cliente

update cliente set salario = 1210.01 where id_cliente = 3
update cliente set salario = 3560.50 where id_cliente = 4
update cliente set salario = 6702.93 where id_cliente = 6

create table historico_preco (
	id_historico serial primary key not null,
	id_produto int not null references produto(id_produto),
	data_alteracao date not null,
	preco money not null
)

create trigger atualiza_preco
after insert or update 
on produto for each row 
execute function atualizacao_inflacao()																															
																															
create or replace function atualizacao_inflacao() returns
trigger as $$ begin
  insert into historico_preco(id_produto, data_alteracao, preco)
  values (new.id_produto, now(), new.money);
return null;
end;
$$language plpgsql;		

update produto set money = 28.50 where id_produto = 1

select * from historico_preco
																															
																														