.class Lcom/android/settings/WirelessSettings$1;
.super Landroid/database/ContentObserver;
.source "WirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/WirelessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/WirelessSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/WirelessSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/WirelessSettings$1;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/WirelessSettings$1;->this$0:Lcom/android/settings/WirelessSettings;

    #calls: Lcom/android/settings/WirelessSettings;->onAirplaneModeChanged()V
    invoke-static {v0}, Lcom/android/settings/WirelessSettings;->access$000(Lcom/android/settings/WirelessSettings;)V

    return-void
.end method
