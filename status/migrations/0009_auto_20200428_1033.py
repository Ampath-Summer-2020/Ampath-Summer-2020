# Generated by Django 3.0.5 on 2020-04-28 14:33

from django.db import migrations


class Migration(migrations.Migration):
    dependencies = [
        ('status', '0008_auto_20200428_1019'),
    ]

    operations = [
        migrations.RenameField(
            model_name='ticketlog',
            old_name='service_status',
            new_name='event_status',
        ),
    ]
