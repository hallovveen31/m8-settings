.class Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference$1;
.super Ljava/lang/Object;
.source "HtcUsbStorageMountTogglePreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->updateSummary()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference$1;->this$0:Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference$1;->this$0:Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;

    #calls: Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->updateSummaryInForeground()V
    invoke-static {v0}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->access$000(Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;)V

    .line 105
    return-void
.end method