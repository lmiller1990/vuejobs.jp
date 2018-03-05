import pell from 'pell'

let richEditors = [
  { id: 'job_description', editor: null },
  { id: 'company_description', editor: null }
]
let form

document.addEventListener('DOMContentLoaded', () => {
  form = document.querySelector('#job_form')

  const initEditor = id => pell.init({
    element: document.getElementById(id)
  })

  richEditors.forEach(x => x.editor = initEditor(x.id))
})

window.newFormSubmitted = function(event) {
  event.preventDefault()
  for (let e in richEditors) {
    const el = document.getElementById(`${richEditors[e].id}_hidden`)
    el.value = richEditors[e].editor.content.innerHTML
  }

  form.submit()
}
