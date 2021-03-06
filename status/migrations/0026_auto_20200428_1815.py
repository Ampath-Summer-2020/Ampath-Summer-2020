# Generated by Django 3.0.5 on 2020-04-28 22:15

from django.db import migrations


class Migration(migrations.Migration):
    dependencies = [
        ('status', '0025_auto_20200428_1805'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='service',
            options={'ordering': ['name'], 'verbose_name': 'Service', 'verbose_name_plural': 'Services'},
        ),
        migrations.RenameField(
            model_name='service',
            old_name='service_description',
            new_name='description',
        ),
        migrations.RenameField(
            model_name='service',
            old_name='service_name',
            new_name='name',
        ),
    ]
