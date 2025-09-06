import js from '@eslint/js';
import globals from 'globals';
import reactHooks from 'eslint-plugin-react-hooks';
import reactRefresh from 'eslint-plugin-react-refresh';
import tseslint from 'typescript-eslint';

export default tseslint.config(
    {
        ignores: ["**/dist/**", "scripts/**/*", "**/node_modules/**", "functions/**/*"]
    },
    js.configs.recommended,
    ...tseslint.configs.recommended,
    {
        // JavaScript/TypeScript ファイル用の基本設定
        files: ["src/**/*.{js,jsx,ts,tsx}"],
        languageOptions: {
            ecmaVersion: 2020,
            globals: globals.browser,
            parserOptions: {
                ecmaVersion: "latest",
                ecmaFeatures: { jsx: true },
                sourceType: "module",
            },
        },
        plugins: {
            "react-hooks": reactHooks,
            "react-refresh": reactRefresh,
        },
        rules: {
            ...reactHooks.configs.recommended.rules,
            "react-refresh/only-export-components": [
                "warn",
                { allowConstantExport: true },
            ],
            "indent": ["error", 2],
            "linebreak-style": ["error", "unix"],
            "quotes": ["error", "single"],
            "semi": ["error", "always"],
            "no-console": ["off"],
            "func-names": ["warn", "as-needed"],
            "max-len": ["warn", { code: 300 }],
            "@typescript-eslint/no-unused-vars": ["error", { "argsIgnorePattern": "^_" }],
            "@typescript-eslint/explicit-function-return-type": "off",
            "@typescript-eslint/explicit-module-boundary-types": "off",
            "no-unused-vars": "off",
        },
    },
);
