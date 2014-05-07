.class Lcom/android/settings/MediaFormat$1;
.super Ljava/lang/Object;
.source "MediaFormat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MediaFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MediaFormat;


# direct methods
.method constructor <init>(Lcom/android/settings/MediaFormat;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/settings/MediaFormat$1;->this$0:Lcom/android/settings/MediaFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, -0x1

    .line 77
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v3, p0, Lcom/android/settings/MediaFormat$1;->this$0:Lcom/android/settings/MediaFormat;

    #getter for: Lcom/android/settings/MediaFormat;->mStorageType:I
    invoke-static {v3}, Lcom/android/settings/MediaFormat;->access$000(Lcom/android/settings/MediaFormat;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 83
    iget-object v3, p0, Lcom/android/settings/MediaFormat$1;->this$0:Lcom/android/settings/MediaFormat;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.settings.action.FORMAT_INTERNAL_SD_CARD_VOLUME"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/settings/MediaFormat;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 114
    :goto_1
    iget-object v3, p0, Lcom/android/settings/MediaFormat$1;->this$0:Lcom/android/settings/MediaFormat;

    invoke-virtual {v3}, Lcom/android/settings/MediaFormat;->finish()V

    goto :goto_0

    .line 86
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, intent:Landroid/content/Intent;
    sget-object v3, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 89
    iget-object v3, p0, Lcom/android/settings/MediaFormat$1;->this$0:Lcom/android/settings/MediaFormat;

    invoke-virtual {v3}, Lcom/android/settings/MediaFormat;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "storage_volume"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    .line 91
    .local v2, storageVolume:Landroid/os/storage/StorageVolume;
    const-string v3, "storage_volume"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 99
    iget-object v3, p0, Lcom/android/settings/MediaFormat$1;->this$0:Lcom/android/settings/MediaFormat;

    invoke-virtual {v3}, Lcom/android/settings/MediaFormat;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "sd_encryption"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 100
    .local v1, sd_encryption:I
    if-eq v1, v5, :cond_2

    .line 101
    iget-object v3, p0, Lcom/android/settings/MediaFormat$1;->this$0:Lcom/android/settings/MediaFormat;

    invoke-virtual {v3}, Lcom/android/settings/MediaFormat;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sd_encryption"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 104
    invoke-static {}, Lcom/android/settings/MediaFormat;->access$100()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 105
    invoke-static {}, Lcom/android/settings/MediaFormat;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Settings.Secure.SD_ENCRYPTION was set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_2
    iget-object v3, p0, Lcom/android/settings/MediaFormat$1;->this$0:Lcom/android/settings/MediaFormat;

    invoke-virtual {v3, v0}, Lcom/android/settings/MediaFormat;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1
.end method
