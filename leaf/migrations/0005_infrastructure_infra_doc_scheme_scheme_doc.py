# Generated by Django 4.1.7 on 2023-05-06 20:16

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('leaf', '0004_remove_infrastructure_infra_doc_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='infrastructure',
            name='infra_doc',
            field=models.FileField(default=None, upload_to='documents/'),
        ),
        migrations.AddField(
            model_name='scheme',
            name='scheme_doc',
            field=models.FileField(default=None, upload_to='documents/'),
        ),
    ]
