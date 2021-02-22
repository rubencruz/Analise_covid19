select a.sk_altitude, a.faixa_altitude, uv.indice_uv, hr.faixa_humedade_relativa, sum(qtd_contagio), sum(qtd_morte)
from fato.fato_contagio_covid19 c 
inner join dimensao.dim_altitude a on (a.sk_altitude = c.sk_altitude)
inner join dimensao.dim_pais p on (p.sk_pais = c.sk_pais)
inner join dimensao.dim_indice_uv uv on ( uv.sk_indice_uv = c.sk_indice_uv )
inner join dimensao.dim_humedade_relativa hr on (hr.sk_humedade_relativa=c.sk_humedade_relativa)
where p.nome_pais = 'PERU'
group by a.sk_altitude, a.faixa_altitude, uv.indice_uv, hr.faixa_humedade_relativa
order by 1 , 2


select a.sk_altitude, a.faixa_altitude, uv.indice_uv, sum(qtd_contagio), sum(qtd_morte)
from fato.fato_contagio_covid19 c 
inner join dimensao.dim_altitude a on (a.sk_altitude = c.sk_altitude)
inner join dimensao.dim_pais p on (p.sk_pais = c.sk_pais)
inner join dimensao.dim_indice_uv uv on ( uv.sk_indice_uv = c.sk_indice_uv )
inner join dimensao.dim_humedade_relativa hr on (hr.sk_humedade_relativa=c.sk_humedade_relativa)
where p.nome_pais = 'PERU' and uv.indice_uv <> 'NI'
group by a.sk_altitude, a.faixa_altitude, uv.indice_uv
order by 1 , 2


select a.sk_altitude, a.faixa_altitude, sum(qtd_contagio), sum(qtd_morte)
from fato.fato_contagio_covid19 c 
inner join dimensao.dim_altitude a on (a.sk_altitude = c.sk_altitude)
inner join dimensao.dim_pais p on (p.sk_pais = c.sk_pais)
inner join dimensao.dim_indice_uv uv on ( uv.sk_indice_uv = c.sk_indice_uv )
inner join dimensao.dim_humedade_relativa hr on (hr.sk_humedade_relativa=c.sk_humedade_relativa)
where p.nome_pais = 'PERU'
group by a.sk_altitude, a.faixa_altitude
order by 1 , 2


select uv.indice_uv, sum(qtd_contagio), sum(qtd_morte)
from fato.fato_contagio_covid19 c 
inner join dimensao.dim_altitude a on (a.sk_altitude = c.sk_altitude)
inner join dimensao.dim_pais p on (p.sk_pais = c.sk_pais)
inner join dimensao.dim_indice_uv uv on ( uv.sk_indice_uv = c.sk_indice_uv )
inner join dimensao.dim_humedade_relativa hr on (hr.sk_humedade_relativa=c.sk_humedade_relativa)
where p.nome_pais = 'PERU'
group by  uv.indice_uv
order by 1 

