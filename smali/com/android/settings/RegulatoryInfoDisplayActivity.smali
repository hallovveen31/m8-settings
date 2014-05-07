.class public Lcom/android/settings/RegulatoryInfoDisplayActivity;
.super Landroid/app/Activity;
.source "RegulatoryInfoDisplayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v13, 0x2

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 53
    .local v9, resources:Landroid/content/res/Resources;
    :try_start_0
    new-instance v6, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const-class v12, Lcom/android/settings/framework/activity/aboutphone/legal/HtcRegulatoryActivity;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .local v6, regulatoryActivity:Landroid/content/ComponentName;
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.settings.SHOW_REGULATORY_INFO"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .local v10, showRegulatoryPageIntent:Landroid/content/Intent;
    invoke-virtual {v10, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0, v10}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->startActivity(Landroid/content/Intent;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v6           #regulatoryActivity:Landroid/content/ComponentName;
    .end local v10           #showRegulatoryPageIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v3

    .line 68
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 74
    const v11, 0x7f0a0005

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    if-nez v11, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->finish()V

    .line 78
    :cond_0
    new-instance v11, Landroid/app/AlertDialog$Builder;

    invoke-direct {v11, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v12, 0x7f0c0f12

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 84
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v11, 0x7f0201ad

    :try_start_1
    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 87
    .local v1, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    if-le v11, v13, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    if-le v11, v13, :cond_1

    const/4 v7, 0x1

    .line 93
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .local v7, regulatoryInfoDrawableExists:Z
    :goto_1
    const v11, 0x7f0c12f4

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 95
    .local v8, regulatoryText:Ljava/lang/CharSequence;
    if-eqz v7, :cond_2

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f0400d9

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 97
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 87
    .end local v7           #regulatoryInfoDrawableExists:Z
    .end local v8           #regulatoryText:Ljava/lang/CharSequence;
    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 89
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v4

    .line 90
    .local v4, ignored:Landroid/content/res/Resources$NotFoundException;
    const/4 v7, 0x0

    .restart local v7       #regulatoryInfoDrawableExists:Z
    goto :goto_1

    .line 98
    .end local v4           #ignored:Landroid/content/res/Resources$NotFoundException;
    .restart local v8       #regulatoryText:Ljava/lang/CharSequence;
    :cond_2
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 99
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 100
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    .line 102
    .local v2, dialog:Landroid/app/AlertDialog;
    const v11, 0x102000b

    invoke-virtual {v2, v11}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 103
    .local v5, messageText:Landroid/widget/TextView;
    const/16 v11, 0x11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 106
    .end local v2           #dialog:Landroid/app/AlertDialog;
    .end local v5           #messageText:Landroid/widget/TextView;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->finish()V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->finish()V

    .line 113
    return-void
.end method
