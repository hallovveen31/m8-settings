.class public Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$AssetInfo$IndexComparator;
.super Ljava/lang/Object;
.source "HtcRegulatoryAssetList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$AssetInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndexComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$AssetInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$AssetInfo;Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$AssetInfo;)I
    .locals 2

    iget v0, p1, Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$AssetInfo;->mIndex:I

    iget v1, p2, Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$AssetInfo;->mIndex:I

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$AssetInfo;->mIndex:I

    iget v1, p2, Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$AssetInfo;->mIndex:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$AssetInfo;

    check-cast p2, Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$AssetInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$AssetInfo$IndexComparator;->compare(Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$AssetInfo;Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$AssetInfo;)I

    move-result v0

    return v0
.end method
