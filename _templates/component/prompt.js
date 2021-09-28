module.exports = {
    prompt: ({ inquirer }) => {
        const questions = [
            {
                type: 'input',
                name: 'name',
                message: 'What is the component name?',
            },
            {
                type: 'select',
                name: 'type',
                choices: [
                    {
                        message: 'React Arrow Function Component (TypeScript)',
                        value: 'functional-typescript',
                    },
                    {
                        message: 'Stateful Component (Typescript)',
                        value: 'stateful-typescript',
                    },
                    // {
                    //     message: 'Stateful Component',
                    //     value: 'stateful',
                    // },
                    // {
                    //     message: 'React Arrow Function Component',
                    //     value: 'functional',
                    // },
                    // {
                    //     message: 'Pure Component',
                    //     value: 'pure',
                    // },
                ],
                message: 'Choose the type of your component',
            },
            {
                type: 'toggle',
                message: 'Do you want to include a test file?',
                name: 'includeTest',
                enabled: 'Heck Yeah',
                disabled: 'Nope',
            },
            {
                type: 'toggle',
                message: 'Do you want to include an imported style sheet?',
                name: 'includeCss',
                enabled: 'For sure',
                disabled: 'Nope',
            },
        ];
        return inquirer.prompt(questions).then(answers => {
            // const {category, name, dir} = answers;
            // const {category, name} = answers;
            const { name } = answers;

            /* == potential future feature */
            // const path = `${category ? `${category}/` : ``}${ dir ? `${dir}/` : `` }`
            // const optionalFolder = `${dir ? `/${dir}` : ``}`;
            // console.log('optionalFolder: ', optionalFolder);
            // console.log('------------------------------------------');
            // const absPath = `src/js/components${optionalFolder}`;
            // const appPath = `app/components${optionalFolder}`;
            // const absPath = `src/js/${dir}`;
            // const appPath = `app/${dir}`;
            // const absPath = `src/js/${dir}`;
            // const appPath = `app/${dir}`;

            const path = 'src/components';

            // return {...answers, absPath, appPath, category};
            return { ...answers, path };
        });
    },
};
