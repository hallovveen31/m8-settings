.class Lcom/android/settings/NotificationFlashSettings$2;
.super Ljava/lang/Object;
.source "NotificationFlashSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/NotificationFlashSettings;->showColorPickerDialog(ILandroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NotificationFlashSettings;

.field final synthetic val$response:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/android/settings/NotificationFlashSettings;Landroid/os/Message;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/NotificationFlashSettings$2;->this$0:Lcom/android/settings/NotificationFlashSettings;

    iput-object p2, p0, Lcom/android/settings/NotificationFlashSettings$2;->val$response:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/NotificationFlashSettings$2;->val$response:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
