# Typography references

The site keeps the al-folio layout, with typography informed by these academic
homepages (reviewed September 18, 2026):

- [Zhimei Ren](https://zhimeir.github.io/): normal-weight 15px paragraphs, clear
  whitespace, and selective red links. This is the user's principal reference.
- [Jon Barron](https://jonbarron.info/): a 32px name, 22px section headings, and
  selective emphasis in a compact research page.
- [Chelsea Finn](https://ai.stanford.edu/~cbfinn/): 15px body text, 22px section
  headings, short paragraphs, and emphasis on meaningful phrases.

Our scale is 32px for page titles, 22px for sections, 18px for subsections,
15px for body text, and 14px for secondary labels. Mobile body text is 16px;
mobile titles are 30px. Body text uses normal weight and a 1.6 line height.
Affiliations, research interests, and key benchmark figures use selective bold
emphasis. Muted red links adapt to a lighter red in dark mode.

These rules live after the theme imports in `assets/css/main.scss`. Keep those
imports aligned with the upstream gem when updating al-folio.
