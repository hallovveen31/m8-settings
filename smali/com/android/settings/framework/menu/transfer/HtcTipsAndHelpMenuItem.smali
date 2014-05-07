.class public Lcom/android/settings/framework/menu/transfer/HtcTipsAndHelpMenuItem;
.super Ljava/lang/Object;
.source "HtcTipsAndHelpMenuItem.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildAndAddTo(Lcom/android/settings/framework/app/HtcIInternalHost;Landroid/view/Menu;)Landroid/view/MenuItem;
    .locals 3
    .parameter "host"
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 33
    const v1, 0x2040396

    invoke-interface {p1, v2, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 39
    .local v0, menuItem:Landroid/view/MenuItem;
    new-instance v1, Lcom/android/settings/framework/menu/transfer/HtcTipsAndHelpMenuItem$1;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/menu/transfer/HtcTipsAndHelpMenuItem$1;-><init>(Lcom/android/settings/framework/app/HtcIInternalHost;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 50
    return-object v0
.end method

.method public static getDefaultIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.htc.showme"

    const-string v3, "com.htc.showme.ui.Search"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, "transfer_data"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
