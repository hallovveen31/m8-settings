.class Lcom/android/settings/SecurityDialog$3;
.super Ljava/lang/Object;
.source "SecurityDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SecurityDialog;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SecurityDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/SecurityDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/settings/SecurityDialog$3;->this$0:Lcom/android/settings/SecurityDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    .line 106
    iget-object v0, p0, Lcom/android/settings/SecurityDialog$3;->this$0:Lcom/android/settings/SecurityDialog;

    iget-object v1, p0, Lcom/android/settings/SecurityDialog$3;->this$0:Lcom/android/settings/SecurityDialog;

    iget-object v1, v1, Lcom/android/settings/SecurityDialog;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/settings/framework/database/HtcDatabaseTable;->SECURE:Lcom/android/settings/framework/database/HtcDatabaseTable;

    const-string v3, "htc_message_notification_preview"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/SecurityDialog;->setNotificationValue(Landroid/content/Context;Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;Z)V

    .line 107
    iget-object v0, p0, Lcom/android/settings/SecurityDialog$3;->this$0:Lcom/android/settings/SecurityDialog;

    iget-object v1, p0, Lcom/android/settings/SecurityDialog$3;->this$0:Lcom/android/settings/SecurityDialog;

    iget-object v1, v1, Lcom/android/settings/SecurityDialog;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/settings/framework/database/HtcDatabaseTable;->SECURE:Lcom/android/settings/framework/database/HtcDatabaseTable;

    const-string v3, "htc_phone_notification_preview"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/SecurityDialog;->setNotificationValue(Landroid/content/Context;Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;Z)V

    .line 108
    iget-object v0, p0, Lcom/android/settings/SecurityDialog$3;->this$0:Lcom/android/settings/SecurityDialog;

    iget-object v1, p0, Lcom/android/settings/SecurityDialog$3;->this$0:Lcom/android/settings/SecurityDialog;

    iget-object v1, v1, Lcom/android/settings/SecurityDialog;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/settings/framework/database/HtcDatabaseTable;->SECURE:Lcom/android/settings/framework/database/HtcDatabaseTable;

    const-string v3, "htc_lockscreen_show_private_contacts"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/SecurityDialog;->setNotificationValue(Landroid/content/Context;Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;Z)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/SecurityDialog$3;->this$0:Lcom/android/settings/SecurityDialog;

    #calls: Lcom/android/settings/SecurityDialog;->notifySettingUpdated()V
    invoke-static {v0}, Lcom/android/settings/SecurityDialog;->access$000(Lcom/android/settings/SecurityDialog;)V

    .line 110
    iget-object v0, p0, Lcom/android/settings/SecurityDialog$3;->this$0:Lcom/android/settings/SecurityDialog;

    invoke-virtual {v0}, Lcom/android/settings/SecurityDialog;->finish()V

    .line 111
    return-void
.end method
