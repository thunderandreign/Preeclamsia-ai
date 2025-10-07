from setuptools import setup, find_packages

setup(
    name='Preeclampsia_ai',
    version='0.1.0',
    packages=find_packages(where='src'),
    package_dir={'': 'src'},
    install_requires=[
        'numpy', 'pandas', 'scikit-learn', 'torch', 'pyyaml'
    ],
    description='AI-powered risk prediction for preeclampsia',
    author='Team PreeclampSlayers',
)
