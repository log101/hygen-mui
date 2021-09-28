module.exports = {
    prompt: ({ inquirer }) => {
        const questions = [
            {
                type: 'input',
                name: 'name',
                message: 'What component is missing a test?',
            },
            {
                type: 'select',
                name: 'path',
                message: 'What kind of component is it?',
                choices: [
                    {
                        message: 'App component',
                        value: './src/components',
                    },
                    {
                        message: 'UI component',
                        value: './src/components/ui',
                    },
                ],
            },
        ];
        return inquirer.prompt(questions).then(answers => {
            return { ...answers };
        });
    },
};
