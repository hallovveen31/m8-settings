.class Lcom/android/settings/nfc/RwP2pEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "RwP2pEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/RwP2pEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/RwP2pEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/RwP2pEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/nfc/RwP2pEnabler$1;->this$0:Lcom/android/settings/nfc/RwP2pEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/nfc/RwP2pEnabler$1;->this$0:Lcom/android/settings/nfc/RwP2pEnabler;

    const-string v2, "android.nfc.extra.ADAPTER_STATE"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #calls: Lcom/android/settings/nfc/RwP2pEnabler;->handleNfcStateChanged(I)V
    invoke-static {v1, v2}, Lcom/android/settings/nfc/RwP2pEnabler;->access$000(Lcom/android/settings/nfc/RwP2pEnabler;I)V

    :cond_0
    return-void
.end method
