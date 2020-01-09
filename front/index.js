const ENDPOINT = 'http://localhost:5200'

function getProductList() {
    console.log('getting product list')
    fetch(ENDPOINT + '/reps')
        .then(res => res.json())
        .then(data => loadDataIntoTable(data))
}

function loadDataIntoTable(data) {
    let t = document.getElementById('tableBody')
    t.innerHTML = '' //clear out the old data so there is no DOM duplication

    data.map(row => {
        const { jobName, repName, lunchName } = row
        let tr = document.createElement('tr')

        tr.innerHTML = `
            <td>${jobName}</td>
            <td>${repName}</td>
            <td>${lunchName}</td>
            `

        t.appendChild(tr)
    })
}





















getProductList()