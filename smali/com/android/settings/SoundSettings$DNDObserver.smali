.class Lcom/android/settings/SoundSettings$DNDObserver;
.super Landroid/database/ContentObserver;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DNDObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SoundSettings;)V
    .locals 1
    .parameter

    .prologue
    .line 2053
    iput-object p1, p0, Lcom/android/settings/SoundSettings$DNDObserver;->this$0:Lcom/android/settings/SoundSettings;

    .line 2054
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2055
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 2060
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2061
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 2062
    const-string v0, "SoundSettings"

    const-string v1, "DND mode:onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SoundSettings$DNDObserver;->this$0:Lcom/android/settings/SoundSettings;

    #calls: Lcom/android/settings/SoundSettings;->getDNDStateInBackgroud()V
    invoke-static {v0}, Lcom/android/settings/SoundSettings;->access$2500(Lcom/android/settings/SoundSettings;)V

    .line 2064
    return-void
.end method
