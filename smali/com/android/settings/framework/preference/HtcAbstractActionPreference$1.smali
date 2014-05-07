.class Lcom/android/settings/framework/preference/HtcAbstractActionPreference$1;
.super Ljava/lang/Object;
.source "HtcAbstractActionPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/preference/HtcAbstractActionPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/HtcAbstractActionPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/HtcAbstractActionPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$1;->this$0:Lcom/android/settings/framework/preference/HtcAbstractActionPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v9, 0x0

    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$1;->this$0:Lcom/android/settings/framework/preference/HtcAbstractActionPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$1;->this$0:Lcom/android/settings/framework/preference/HtcAbstractActionPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$1;->this$0:Lcom/android/settings/framework/preference/HtcAbstractActionPreference;

    #getter for: Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->access$000(Lcom/android/settings/framework/preference/HtcAbstractActionPreference;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v7, v9}, Landroid/content/HtcContext;->createPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v7

    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$1;->this$0:Lcom/android/settings/framework/preference/HtcAbstractActionPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    if-ne v7, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$1;->this$0:Lcom/android/settings/framework/preference/HtcAbstractActionPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreference;->getFragment()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$1;->this$0:Lcom/android/settings/framework/preference/HtcAbstractActionPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$1;->this$0:Lcom/android/settings/framework/preference/HtcAbstractActionPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcPreference;->getTitleRes()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$1;->this$0:Lcom/android/settings/framework/preference/HtcAbstractActionPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$1;->this$0:Lcom/android/settings/framework/preference/HtcAbstractActionPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreference;->getFragment()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$1;->this$0:Lcom/android/settings/framework/preference/HtcAbstractActionPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v7, v1, v2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v8

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x10202f6

    invoke-virtual {v1, v2, v8}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$1;->this$0:Lcom/android/settings/framework/preference/HtcAbstractActionPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    move-result-object v1

    const/16 v2, 0x1001

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string v2, ":android:prefs"

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method
