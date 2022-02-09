% Equipo Ermiry
% Erick Salas Romero

% All characters
male(aegon_targaryen).
male(aeron_greyjoy).
male(aerys_targaryen).
male(aegon_V_targaryen).
male(balon_greyjoy).
male(bran_stark).
male(benjen_stark).
male(daeron_targaryen).
male(brandon_stark).
male(doran_martell).
male(euron_greyjoy).
male(gendry).
male(duncan_targaryen).
male(jaime_lannister).
male(eddard_stark).
male(joffery_lannister).
male(lancel_lannister).
male(jon_snow).
male(lewyn_martell).
male(mace_tyrell).
male(kevan_lannister).
male(loras_tyrell).
male(luthor_tyrell).
male(maron_greyjoy).
male(martyn_lannister).
male(oberyn_martell).
male(renly_baratheon).
male(rhaegar_targaryen).
male(rickard_stark).
male(rickon_stark).
male(robb_stark).
male(robert_baratheon).
male(stannis_baratheon).
male(steffon_baratheon).
male(theon_greyjoy).
male(rodrick_greyjoy).
male(tommen_lannister).
male(tyene_sand).
male(tytos_lannister).
male(trystane_martell).
male(tyrion_lannister).
male(viserys_targaryen).
male(tywin_lannister).
male(willem_lannister).
female(alannys_harlaw).
female(arya_stark).
female(cersei_lannister).
female(cassana_estermont).
female(catelyn_stark).
female(daenerys_targaryen).
female(ella_martell).
female(lyanna_stark).
female(ellaria_sand).
female(joanna_lannister).
female(margaery_tyrell).
female(mellario_of_norvos).
female(myrcella_lannister).
female(nymeria_sand).
female(obara_sand).
female(sarella_sand).
female(olenna_tyrell).
female(rhaenys_targaryen).
female(sansa_stark).
female(selyse_baratheon).
female(shireen_baratheon).
female(rhaella_targaryen).
female(yara_greyjoy).
female(alerie_hightower).

% Stark
parent(rickard_stark, brandon_stark).
parent(rickard_stark, eddard_stark).
parent(rickard_stark, benjen_stark).
parent(eddard_stark, sansa_stark).
parent(rickard_stark, lyanna_stark).
parent(eddard_stark, robb_stark).
parent(catelyn_stark, bran_stark).
parent(eddard_stark, bran_stark).
parent(eddard_stark, rickon_stark).
parent(eddard_stark, arya_stark).
parent(catelyn_stark, arya_stark).
parent(catelyn_stark, sansa_stark).
parent(catelyn_stark, rickon_stark).
parent(lyanna_stark, jon_snow).
parent(catelyn_stark, robb_stark).

% Baratheon
parent(cassana_estermont, stannis_baratheon).
parent(steffon_baratheon, robert_baratheon).
parent(steffon_baratheon, stannis_baratheon).
parent(cassana_estermont, robert_baratheon).
parent(cassana_estermont, renly_baratheon).
parent(robert_baratheon, gendry).
parent(steffon_baratheon, renly_baratheon).
parent(selyse_baratheon, shireen_baratheon).
parent(stannis_baratheon, shireen_baratheon).

% Martell
parent(lewyn_martell, ella_martell).
parent(lewyn_martell, doran_martell).
parent(lewyn_martell, oberyn_martell).
parent(ella_martell, rhaenys_targaryen).
parent(oberyn_martell, tyene_sand).
parent(ella_martell, aegon_targaryen).
parent(ellaria_sand, tyene_sand).
parent(mellario_of_norvos, trystane_martell).
parent(doran_martell, trystane_martell).
parent(oberyn_martell, nymeria_sand).
parent(oberyn_martell, sarella_sand).
parent(oberyn_martell, obara_sand).

% Tyrell
parent(alerie_hightower, loras_tyrell).
parent(luthor_tyrell, mace_tyrell).
parent(alerie_hightower, margaery_tyrell).
parent(mace_tyrell, margaery_tyrell).
parent(olenna_tyrell, mace_tyrell).
parent(mace_tyrell, loras_tyrell).

% Targaryen
parent(aegon_V_targaryen, duncan_targaryen).
parent(aegon_V_targaryen, aerys_targaryen).
parent(aerys_targaryen, viserys_targaryen).
parent(aegon_V_targaryen, rhaella_targaryen).
parent(aegon_V_targaryen, daeron_targaryen).
parent(aerys_targaryen, rhaegar_targaryen).
parent(rhaegar_targaryen, rhaenys_targaryen).
parent(rhaella_targaryen, viserys_targaryen).
parent(aerys_targaryen, daenerys_targaryen).
parent(rhaella_targaryen, rhaegar_targaryen).
parent(rhaella_targaryen, daenerys_targaryen).
parent(rhaegar_targaryen, aegon_targaryen).
parent(rhaegar_targaryen, jon_snow).

% Greyjoy
parent(balon_greyjoy, yara_greyjoy).
parent(alannys_harlaw, rodrick_greyjoy).
parent(balon_greyjoy, maron_greyjoy).
parent(balon_greyjoy, rodrick_greyjoy).
parent(alannys_harlaw, maron_greyjoy).
parent(alannys_harlaw, yara_greyjoy).
parent(balon_greyjoy, theon_greyjoy).
parent(alannys_harlaw, theon_greyjoy).

% Lannister
parent(tytos_lannister, kevan_lannister).
parent(tywin_lannister, tyrion_lannister).
parent(tywin_lannister, cersei_lannister).
parent(tytos_lannister, tywin_lannister).
parent(tywin_lannister, jaime_lannister).
parent(joanna_lannister, jaime_lannister).
parent(cersei_lannister, myrcella_lannister).
parent(joanna_lannister, tyrion_lannister).
parent(joanna_lannister, cersei_lannister).
parent(cersei_lannister, joffery_lannister).
parent(cersei_lannister, tommen_lannister).
parent(jaime_lannister, tommen_lannister).
parent(kevan_lannister, willem_lannister).
parent(jaime_lannister, myrcella_lannister).
parent(kevan_lannister, lancel_lannister).
parent(kevan_lannister, martyn_lannister).
parent(jaime_lannister, joffery_lannister).

child(X, Y) :-
	parent(Y, X).

daughter(X, Y) :-
	parent(Y, X),
	female(X).

son(X, Y) :-
	parent(Y, X),
	male(X).

children(X, Children) :-
	setof(Y, parent(X,Y), Children),
	!.

children(X, Children) :-
	not(setof(Y, parent(X,Y), Children)),
	Children = none.

mother(X, Y) :-
	parent(X, Y),
	female(X).

father(X, Y) :-
	parent(X, Y),
	male(X).

parents(X, Parents) :-
	setof(Y, parent(Y, X), Parents),
	!.

parents(X, Parents) :-
	not(setof(Y, parent(Y, X), Parents)),
	Parents = unknown.

sibling(X, Y) :-
	parent(Z, X),
	parent(Z, Y),
	dif(X, Y).

list_siblings(X, Siblings) :-
	setof(Y, sibling(X,Y), Siblings);
	Siblings = none.

siblings(X, Y) :-
	list_siblings(X, Siblings),
	member(Y, Siblings).

sister(X, Y) :-
	siblings(X, Y),
	female(X).

brother(X, Y) :-
	siblings(X, Y),
	male(X).

relationship(X, Y) :-
	mother(X, Y),
	format("~w is the mother of ~w", [X, Y]), nl.

relationship(X, Y) :-
	father(X, Y),
	format("~w is the father of ~w", [X, Y]), nl.

relationship(X, Y) :-
	daughter(X, Y),
	format("~w is the daughter of ~w", [X, Y]), nl.

relationship(X, Y) :-
	son(X, Y),
	format("~w is the son of ~w", [X, Y]), nl.

relationship(X, Y) :-
	sister(X, Y),
	format("~w is the sister of ~w", [X, Y]), nl.

relationship(X, Y) :-
	brother(X, Y),
	format("~w is the brother of ~w", [X, Y]), nl.

relationship(X, Y) :-
	aunt(X, Y),
	format("~w is the aunt of ~w", [X, Y]), nl.

relationship(X, Y) :-
	uncle(X, Y),
	format("~w is the uncle of ~w", [X, Y]), nl.

relationship(X, Y) :-
	neice(X, Y),
	format("~w is the neice of ~w", [X, Y]), nl.

relationship(X, Y) :-
	nephew(X, Y),
	format("~w is the nephew of ~w", [X, Y]), nl.
