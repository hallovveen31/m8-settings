.class Lcom/android/settings/bluetooth/HtcMiniSettings$4;
.super Ljava/lang/Object;
.source "HtcMiniSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/HtcMiniSettings;->onHandleStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/HtcMiniSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/HtcMiniSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/HtcMiniSettings$4;->this$0:Lcom/android/settings/bluetooth/HtcMiniSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings$4;->this$0:Lcom/android/settings/bluetooth/HtcMiniSettings;

    const/4 v1, 0x5

    #calls: Lcom/android/settings/bluetooth/HtcMiniSettings;->onHandleStateChanged(I)V
    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/HtcMiniSettings;->access$200(Lcom/android/settings/bluetooth/HtcMiniSettings;I)V

    return-void
.end method
