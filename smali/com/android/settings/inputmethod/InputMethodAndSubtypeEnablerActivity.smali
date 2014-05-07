.class public Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnablerActivity;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
.source "InputMethodAndSubtypeEnablerActivity.java"


# static fields
.field private static final PKG_NAME:Ljava/lang/String; = "com.google.android.voicesearch"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;-><init>()V

    return-void
.end method

.method private final applyHtcActionBar()V
    .locals 5

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnablerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 50
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 51
    new-instance v2, Lcom/htc/widget/ActionBarExt;

    invoke-direct {v2, p0, v0}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/app/Activity;Landroid/app/ActionBar;)V

    .line 52
    .local v2, actionBarExt:Lcom/htc/widget/ActionBarExt;
    invoke-virtual {v2}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v1

    .line 54
    .local v1, actionBarContainer:Lcom/htc/widget/ActionBarContainer;
    new-instance v3, Lcom/htc/widget/ActionBarText;

    invoke-direct {v3, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    .line 55
    .local v3, actionBarText:Lcom/htc/widget/ActionBarText;
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnablerActivity;->getHtcActionBarTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/ActionBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v1}, Lcom/htc/widget/ActionBarContainer;->removeAllViews()V

    .line 58
    invoke-virtual {v1, v3}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 60
    .end local v1           #actionBarContainer:Lcom/htc/widget/ActionBarContainer;
    .end local v2           #actionBarExt:Lcom/htc/widget/ActionBarExt;
    .end local v3           #actionBarText:Lcom/htc/widget/ActionBarText;
    :cond_0
    return-void
.end method


# virtual methods
.method public getHtcActionBarTitle()Ljava/lang/String;
    .locals 8

    .prologue
    .line 64
    const/4 v3, 0x0

    .line 66
    .local v3, title:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnablerActivity;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.google.android.voicesearch"

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 70
    .local v2, mPakContext:Landroid/content/Context;
    if-eqz v2, :cond_0

    .line 71
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "@string/select_language"

    const-string v6, "string/"

    const-string v7, "com.google.android.voicesearch"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 74
    .local v0, ResId:I
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 81
    .end local v0           #ResId:I
    .end local v2           #mPakContext:Landroid/content/Context;
    :cond_0
    :goto_0
    return-object v3

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "InputMethodAndSubtypeEnablerActivity"

    const-string v5, "Can\'t find class com.google.android.voicesearch"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 40
    .local v0, modIntent:Landroid/content/Intent;
    const-string v1, ":android:show_fragment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 44
    :cond_0
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnablerActivity;->applyHtcActionBar()V

    .line 36
    return-void
.end method
