.class public final Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver;
.super Lcom/android/settings/framework/receiver/HtcAbsReceiver;
.source "HtcMediaScannerEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$OnMediaScannerEventListener;,
        Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$EventParams;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mOnMediaScannerEventListener:Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$OnMediaScannerEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/receiver/HtcAbsReceiver;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected acquirePermission()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver;->mOnMediaScannerEventListener:Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$OnMediaScannerEventListener;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver;->TAG:Ljava/lang/String;

    const-string v2, "this.mOnMediaScanningListener can not be null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$EventParams;

    invoke-direct {v0}, Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$EventParams;-><init>()V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$EventParams;->action:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$EventParams;->data:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$EventParams;->dataString:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$EventParams;->scheme:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$EventParams;->dataString:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$EventParams;->path:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$EventParams;->path:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$EventParams;->path:Ljava/lang/String;

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$EventParams;->path:Ljava/lang/String;

    const-string v2, "file://"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$EventParams;->path:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver;->mOnMediaScannerEventListener:Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$OnMediaScannerEventListener;

    invoke-interface {v1, v0}, Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$OnMediaScannerEventListener;->onMediaScannerStateChanged(Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$EventParams;)V

    goto :goto_0
.end method

.method protected setIntentFilter(Landroid/content/IntentFilter;)V
    .locals 1

    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "file"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    return-void
.end method

.method public setOnMediaScannerEventListener(Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$OnMediaScannerEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver;->mOnMediaScannerEventListener:Lcom/android/settings/framework/receiver/HtcMediaScannerEventReceiver$OnMediaScannerEventListener;

    return-void
.end method
