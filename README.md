# course-site-quarto-lite

This repository contains a minimal Quarto-based template for class website. You can see a preview of it at [https://berkeley-scf.github.io/course-site-quarto-lite](https://berkeley-scf.github.io/course-site-quarto-lite). This template is intended to be forked and altered for other courses.

## Capabilities of this Quarto-based Template

- Create a basic class website by modifying content online at github.com or in a GitHub repository.
   

## Instructions for Course Staff

### Basic Instructions 

1. When department staff notify you that the class repository is ready, go to the GitHub site for the class, e.g., https://github.com/berkeley-stat999/fall-2024.

2. Begin making changes relevant to your course. To edit a file, you can click on a file, then on the edit icon in the upper right and then on `Commit changes` in the upper right when you want to save your changes. In the dialog box that pops up, also simply click on `Commit changes` in the box.
   - If desired, modify the site's metadata and table of contents in `_quarto.yml` to reflect the pages you want on the site. You may choose to add or remove files (each file having the conent for a separate page).
   - Edit the various Quarto Markdown (qmd) files: `index.qmd` (the home page), `staff.qmd` (information on staff), and `syllabus.qmd` with the content you want. You can use simple Markdown formatting, which will hopefully be easy to do by example even if you're not familiar with Markdown.
   - Edit the `buttons.yml` file to modify the buttons shown at the top of the home page (or remove the syntax related to buttons in `index.qmd` if you don't want buttons). 
   - Update `README.md` to remove these instructions and include basic text referring to your actual class number (see section at bottom of this document for template text).
   - Check the license assigned to the materials posted on the site (by default CC-BY) in `license.qmd` to make sure you are comfortable with it. You're welcome to choose another license that you prefer. If you'd like to not allow commercial use, you might choose CC-BY-NC. You might also consider not allowing derivative works, for example by choosing [CC-BY-ND](https://creativecommons.org/licenses/by-nd/4.0/deed.en) or CC-BY-NC-ND, as chosen for Data 8, but note that this license can make it hard for others to use the material in part or to build upon it. 
   
3. We've configured the site so that when you commit changes, some processing gets done remotely to update the website. Please contact us if you notice any problems.

### More Advanced (Git-Based) Instructions

These instructions have been tested under MacOS.

1. Install [Quarto](https://quarto.org/docs/get-started) for Mac, Windows, or Linux.

2. [Install Git](https://git-scm.com/downloads) if you don't have it installed.

3. When department staff notify you that the class repository is ready, clone it into a local working directory on your computer. For the purposes of these instructions, we'll pretend your repository is at https://github.com/berkeley-stat555/fall-2024.
   - You can do this from the terminal/commandline or within a Git graphical application (e.g., `GitHub Desktop`).
   - From the terminal it would look like this:
     ```bash
     git clone https://github.com/berkeley-stat555/fall-2024
     cd fall-2024
     ```
   If you need to maintain several of these websites and there is a conflict in working directory names, you can just rename the working directory after cloning it, e.g. `mv fall-2024 stat555-fall-2024; cd stat555-fall-2024`.


4. Begin making changes relevant to your course. As described in the previous section.

5. Update your repository with the changes to your source files. First tell git about all files that should be in your repo.

   ```bash
   git add NEWFILE1.md NEWFILE2.md NEWDIRECTORY
   ```

   Then commit your changes:
   ```bash
   git commit -m "Initial checkin for Stat 555."
   ```

   If you modify an existing file, you can either do `git add currentfile.md` or include the `-a` flag when you run `git commit` to automatically update files that Git is already keeping track of, e.g., after modifying unit 7 files, `git commit -am "Updated Unit 7"`.

6. Push your changed to GitHub (you might choose to wait to do this until after previewing the site, discussed in the next section).
   
   ```bash
   git push
   ```

## Instructions for Department Staff

In addition to standard SCF instructions for setting up the GitHub organization, course overview, and DNS, staff will need to 

1. Fork this `course-lite-quarto-lite` repository template:

   a. Visit https://github.com/berkeley-scf/course-site-quarto-lite.

   b. Above the file list click **Use this template** and then **Create a new repository**. This will then bring you to a screen where you'll configure the new repository.

   c. Do not enable the **Include all branches** checkbox.

   d. Name the repository after academic term, e.g. `fall-2024` and place it into the per-course organization, e.g. `berkeley-statNNN`.

   f. Click on **Create Repository**.

   g. Change "999" to the actual course number in `index.qmd` and `_quarto.yml`.
   
2. Clone the repository and run `quarto publish gh-pages`. This will set up the gh-pages branch and activate the GitHub Pages site. Once that is done, commits made from `github.com/berkeley-statXYZ/fall-2024` will trigger rendering and building the site via GitHub Actions.


### README Content for Actual Class Repositories

This is the repository for the course website and course material for Statistics XYZ for Fall 2024. 
The website for which this content is the source materials is available at <https://statXYZ.berkeley.edu/fall-2024>.


