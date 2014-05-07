.class public final Lcom/android/settings/framework/content/custom/HtcCustomData;
.super Ljava/lang/Object;
.source "HtcCustomData.java"


# instance fields
.field private mCustomData:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .parameter "customData"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/settings/framework/content/custom/HtcCustomData;->mCustomData:Landroid/os/Bundle;

    .line 27
    return-void
.end method

.method public static booleanArrayListToPrimitiveArray(Ljava/util/ArrayList;)[Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)[Z"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-nez p0, :cond_1

    .line 96
    const/4 v0, 0x0

    .line 104
    :cond_0
    return-object v0

    .line 100
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Z

    .line 101
    .local v0, booleans:[Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 102
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static integerArrayListToPrimitiveArray(Ljava/util/ArrayList;)[I
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez p0, :cond_1

    .line 116
    const/4 v1, 0x0

    .line 124
    :cond_0
    return-object v1

    .line 120
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 121
    .local v1, ints:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 122
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static stringArrayListToPrimitiveArray(Ljava/util/ArrayList;)[Ljava/lang/String;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 78
    const/4 v0, 0x0

    .line 84
    :goto_0
    return-object v0

    .line 82
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 83
    .local v0, strings:[Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public get()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/framework/content/custom/HtcCustomData;->mCustomData:Landroid/os/Bundle;

    return-object v0
.end method

.method protected getBundleByFunctionName(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter "functionName"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/framework/content/custom/HtcCustomData;->mCustomData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/settings/framework/content/custom/HtcCustomData;->mCustomData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getStringByFunctionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "functionName"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/framework/content/custom/HtcCustomData;->mCustomData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/settings/framework/content/custom/HtcCustomData;->mCustomData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
