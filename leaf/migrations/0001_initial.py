# Generated by Django 4.1.7 on 2023-05-06 20:12

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Infrastructure',
            fields=[
                ('Infrastructure_id', models.AutoField(primary_key=True, serialize=False)),
                ('Infrastructure_name', models.CharField(max_length=100, verbose_name='Name')),
                ('Infrastructure_det', models.CharField(max_length=100, verbose_name='det')),
                ('Infrastructure_cost', models.CharField(max_length=100, verbose_name='cost')),
            ],
        ),
        migrations.CreateModel(
            name='Leaf',
            fields=[
                ('Leaf_id', models.AutoField(primary_key=True, serialize=False)),
                ('Leaf_name', models.CharField(max_length=100, verbose_name='leaf_name')),
                ('Leaf_model', models.FileField(max_length=1000, upload_to='models/', verbose_name='cnnmodel')),
            ],
        ),
        migrations.CreateModel(
            name='login',
            fields=[
                ('log_id', models.AutoField(primary_key=True, serialize=False)),
                ('username', models.CharField(max_length=100, verbose_name='username')),
                ('password', models.CharField(max_length=100, verbose_name='password')),
                ('role', models.CharField(max_length=100, verbose_name='role')),
            ],
        ),
        migrations.CreateModel(
            name='Scheme',
            fields=[
                ('scheme_id', models.AutoField(primary_key=True, serialize=False)),
                ('scheme_name', models.CharField(max_length=100, verbose_name='Name')),
                ('scheme_details', models.CharField(default=None, max_length=200, verbose_name='scheme_details')),
                ('scheme_status', models.CharField(default=None, max_length=100, verbose_name='Status')),
            ],
        ),
        migrations.CreateModel(
            name='User',
            fields=[
                ('User_id', models.AutoField(primary_key=True, serialize=False)),
                ('User_name', models.CharField(max_length=100, verbose_name='Name')),
                ('User_address', models.CharField(max_length=500, verbose_name='User_address')),
                ('User_phone', models.CharField(max_length=100, verbose_name='User_phone')),
                ('User_status', models.CharField(default='', max_length=50, verbose_name='User_status')),
                ('User_logid', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='leaf.login')),
            ],
        ),
        migrations.CreateModel(
            name='Staff',
            fields=[
                ('Staff_id', models.AutoField(primary_key=True, serialize=False)),
                ('Staff_name', models.CharField(max_length=100, verbose_name='Name')),
                ('Staff_address', models.CharField(max_length=500, verbose_name='Staff_address')),
                ('Staff_email', models.EmailField(max_length=200, verbose_name='Staff_email')),
                ('Staff_phone', models.CharField(max_length=100, verbose_name='Staff_phone')),
                ('Staff_qualification', models.CharField(max_length=200, verbose_name='Staff_qualification')),
                ('Staff_designation', models.CharField(max_length=100, verbose_name='Staff_designation')),
                ('Staff_photo', models.FileField(max_length=1000, upload_to='images/', verbose_name='Staff_photo')),
                ('Staff_status', models.CharField(default='', max_length=50, verbose_name='Staff_status')),
                ('Staff_logid', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='leaf.login')),
            ],
        ),
        migrations.CreateModel(
            name='InfrastructureBooking',
            fields=[
                ('booking_id', models.AutoField(primary_key=True, serialize=False)),
                ('status', models.CharField(max_length=50, verbose_name='Status')),
                ('infrastructure', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='leaf.infrastructure')),
                ('user', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='leaf.user')),
            ],
        ),
        migrations.AddField(
            model_name='infrastructure',
            name='staff_logid',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='leaf.staff'),
        ),
        migrations.CreateModel(
            name='Disease',
            fields=[
                ('Des_id', models.AutoField(primary_key=True, serialize=False)),
                ('Des_name', models.CharField(max_length=100, verbose_name='Name')),
                ('Des_Details', models.CharField(max_length=500, verbose_name='Des_Details')),
                ('model_order', models.CharField(max_length=100, verbose_name='Name')),
                ('Leaf', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='leaf.leaf')),
            ],
        ),
        migrations.CreateModel(
            name='Complaint',
            fields=[
                ('Complaint_id', models.AutoField(primary_key=True, serialize=False)),
                ('Complaint_subject', models.CharField(max_length=100, verbose_name='subject')),
                ('Complaint_message', models.CharField(max_length=500, verbose_name='mesage')),
                ('Complaint_date', models.CharField(max_length=100, verbose_name='date')),
                ('Complaint_reply', models.CharField(max_length=500, verbose_name='replay')),
                ('User_id', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='leaf.user')),
            ],
        ),
        migrations.CreateModel(
            name='AppliedScheme',
            fields=[
                ('booking_id', models.AutoField(primary_key=True, serialize=False)),
                ('status', models.CharField(max_length=50, verbose_name='Status')),
                ('scheme', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='leaf.scheme')),
                ('user', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='leaf.user')),
            ],
        ),
    ]