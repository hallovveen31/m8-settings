.class Lcom/a/a/a/a$a;
.super Landroid/content/BroadcastReceiver;
.source "APS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/a/a;


# direct methods
.method private constructor <init>(Lcom/a/a/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 492
    iput-object p1, p0, Lcom/a/a/a/a$a;->a:Lcom/a/a/a/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 494
    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/a/a;Lcom/a/a/a/a$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 491
    invoke-direct {p0, p1}, Lcom/a/a/a/a$a;-><init>(Lcom/a/a/a/a;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 501
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    invoke-static {}, Lcom/a/a/a/a;->d()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a/a;->a(Ljava/util/List;)Ljava/util/List;

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    :cond_2
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/a/a/a/a;->a(J)J

    goto :goto_0
.end method
