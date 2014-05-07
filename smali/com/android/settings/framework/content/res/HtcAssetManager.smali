.class public Lcom/android/settings/framework/content/res/HtcAssetManager;
.super Ljava/lang/Object;
.source "HtcAssetManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAssetManager(Landroid/content/Context;)Landroid/content/res/AssetManager;
    .locals 2
    .annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceTest;
        value = {
            .subannotation Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceTest$HtcUnitTest;
                averageTime = "0.470587 (ms)"
                device = "EvitareUL"
                round = 0xf4240L
                totalTime = "470587 (ms)"
            .end subannotation,
            .subannotation Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceTest$HtcUnitTest;
                averageTime = "0.510922 (ms)"
                device = "EvitareUL"
                round = 0xf4240L
                totalTime = "510922 (ms)"
            .end subannotation,
            .subannotation Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceTest$HtcUnitTest;
                averageTime = "0.497027 (ms)"
                device = "EvitareUL"
                round = 0xf4240L
                totalTime = "497027 (ms)"
            .end subannotation,
            .subannotation Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceTest$HtcUnitTest;
                averageTime = "0.504452 (ms)"
                device = "EvitareUL"
                round = 0xf4240L
                totalTime = "504452 (ms)"
            .end subannotation,
            .subannotation Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceTest$HtcUnitTest;
                averageTime = "0.480765 (ms)"
                device = "EvitareUL"
                round = 0xf4240L
                totalTime = "480765 (ms)"
            .end subannotation
        }
    .end annotation

    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    return-object v0
.end method
