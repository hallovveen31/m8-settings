.class Lcom/android/settings/RingerVolume$1;
.super Landroid/os/Handler;
.source "RingerVolume.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RingerVolume;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RingerVolume;


# direct methods
.method constructor <init>(Lcom/android/settings/RingerVolume;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/RingerVolume$1;->this$0:Lcom/android/settings/RingerVolume;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/RingerVolume$1;->this$0:Lcom/android/settings/RingerVolume;

    #calls: Lcom/android/settings/RingerVolume;->updateSlidersAndMutedStates()V
    invoke-static {v0}, Lcom/android/settings/RingerVolume;->access$000(Lcom/android/settings/RingerVolume;)V

    return-void
.end method
