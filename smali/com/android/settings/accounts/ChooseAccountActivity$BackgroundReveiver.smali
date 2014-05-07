.class Lcom/android/settings/accounts/ChooseAccountActivity$BackgroundReveiver;
.super Landroid/content/BroadcastReceiver;
.source "ChooseAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/ChooseAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackgroundReveiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/ChooseAccountActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/ChooseAccountActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accounts/ChooseAccountActivity$BackgroundReveiver;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    sget-object v0, Lcom/android/settings/accounts/Util;->ACTION_TAP_TO_TOP:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/accounts/ChooseAccountActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTION_TAP_TO_TOP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity$BackgroundReveiver;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v0}, Lcom/android/settings/accounts/ChooseAccountActivity;->backToTop()V

    :cond_0
    return-void
.end method
