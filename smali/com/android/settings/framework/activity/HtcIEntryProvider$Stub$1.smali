.class final Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub$1;
.super Ljava/lang/Object;
.source "HtcIEntryProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->startProvider()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Landroid/content/res/Resources;

    sget-object v1, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->CONTEXT:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/framework/content/res/HtcAssetManager;->createAssetManager(Landroid/content/Context;)Landroid/content/res/AssetManager;

    move-result-object v1

    sget-object v2, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    sget-object v3, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    invoke-static {v0}, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->access$002(Landroid/content/res/Resources;)Landroid/content/res/Resources;

    invoke-static {}, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;->access$100()Lcom/android/settings/framework/activity/HtcIEntryProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/framework/activity/HtcIEntryProvider;->loadEntryList()V

    return-void
.end method
