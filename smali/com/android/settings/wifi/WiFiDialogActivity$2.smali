.class Lcom/android/settings/wifi/WiFiDialogActivity$2;
.super Ljava/lang/Object;
.source "WiFiDialogActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WiFiDialogActivity;->onResume()V
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

    iput-object p1, p0, Lcom/android/settings/wifi/WiFiDialogActivity$2;->this$0:Lcom/android/settings/wifi/WiFiDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WiFiDialogActivity$2;->this$0:Lcom/android/settings/wifi/WiFiDialogActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    return-void
.end method
