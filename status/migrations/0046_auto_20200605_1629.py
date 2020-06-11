# Generated by Django 3.0.6 on 2020-06-05 20:29

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('status', '0045_clientdomain_inter_domain_service'),
    ]

    operations = [
        migrations.AlterField(
            model_name='clientdomain',
            name='inter_domain_service',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='inter_domain_service', to='status.Service'),
        ),
    ]
