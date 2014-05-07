.class final Lcom/android/settings/framework/menu/transfer/HtcTipsAndHelpMenuItem$1;
.super Ljava/lang/Object;
.source "HtcTipsAndHelpMenuItem.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/menu/transfer/HtcTipsAndHelpMenuItem;->buildAndAddTo(Lcom/android/settings/framework/app/HtcIInternalHost;Landroid/view/Menu;)Landroid/view/MenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$host:Lcom/android/settings/framework/app/HtcIInternalHost;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/app/HtcIInternalHost;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/menu/transfer/HtcTipsAndHelpMenuItem$1;->val$host:Lcom/android/settings/framework/app/HtcIInternalHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/framework/menu/transfer/HtcTipsAndHelpMenuItem$1;->val$host:Lcom/android/settings/framework/app/HtcIInternalHost;

    invoke-static {}, Lcom/android/settings/framework/menu/transfer/HtcTipsAndHelpMenuItem;->getDefaultIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_ACTIVITY:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    invoke-static {v0, v1, v2}, Lcom/android/settings/framework/content/HtcSettingsContext;->startIntent(Lcom/android/settings/framework/app/HtcIInternalHost;Landroid/content/Intent;Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;)V

    const/4 v0, 0x0

    return v0
.end method
