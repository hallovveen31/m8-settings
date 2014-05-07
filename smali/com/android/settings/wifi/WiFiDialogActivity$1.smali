.class Lcom/android/settings/wifi/WiFiDialogActivity$1;
.super Ljava/lang/Object;
.source "WiFiDialogActivity.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WiFiDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WiFiDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WiFiDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WiFiDialogActivity$1;->this$0:Lcom/android/settings/wifi/WiFiDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/WiFiDialogActivity$1;->this$0:Lcom/android/settings/wifi/WiFiDialogActivity;

    if-eqz v0, :cond_0

    const v1, 0x7f0c0d92

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 0

    return-void
.end method
