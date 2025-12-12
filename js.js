// EXEMPLE PROMESSE EN JAVASCRIPT

const maPromesse = new Promise((resolve, reject) => {
  const succes = true;
  const age = 12;

  if (succes & (age == 12)) {
    resolve({
      nom: "brandt",
      prenom: "thomas",
      age: 37,
    });
  }

  if (succes) {
    resolve("Tout a fonctionné !");
  } else {
    reject("Il y a eu un problème.");
  }
});

maPromesse
  .then((message) => {
    const body = document.querySelector("body");
    const p = document.createElement("p");
    p.textContent = message.nom;
    body.appendChild(p);
    console.log("Succès :", message.nom);
  })
  .catch((erreur) => {
    console.log("Erreur :", erreur);
  });
