# Generated by Django 3.0.6 on 2020-06-05 18:11

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('status', '0044_service_scope'),
    ]

    operations = [
        migrations.AddField(
            model_name='clientdomain',
            name='inter_domain_service',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, related_name='inter_domain_service', to='status.Service'),
        ),
    ]