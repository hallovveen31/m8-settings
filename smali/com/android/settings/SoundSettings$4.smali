.class Lcom/android/settings/SoundSettings$4;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SoundSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SoundSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 776
    iput-object p1, p0, Lcom/android/settings/SoundSettings$4;->this$0:Lcom/android/settings/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/android/settings/SoundSettings$4;->this$0:Lcom/android/settings/SoundSettings;

    #calls: Lcom/android/settings/SoundSettings;->UpdateRingtoneSlot2Preference()V
    invoke-static {v0}, Lcom/android/settings/SoundSettings;->access$2000(Lcom/android/settings/SoundSettings;)V

    .line 779
    return-void
.end method