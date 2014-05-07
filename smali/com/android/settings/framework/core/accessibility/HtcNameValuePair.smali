.class public Lcom/android/settings/framework/core/accessibility/HtcNameValuePair;
.super Ljava/lang/Object;
.source "HtcNameValuePair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ValueType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mName:Ljava/lang/CharSequence;

.field private mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TValueType;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/core/accessibility/HtcNameValuePair;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/accessibility/HtcNameValuePair;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/Object;)V
    .locals 0
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "TValueType;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, this:Lcom/android/settings/framework/core/accessibility/HtcNameValuePair;,"Lcom/android/settings/framework/core/accessibility/HtcNameValuePair<TValueType;>;"
    .local p2, value:Ljava/lang/Object;,"TValueType;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/settings/framework/core/accessibility/HtcNameValuePair;->mName:Ljava/lang/CharSequence;

    .line 29
    iput-object p2, p0, Lcom/android/settings/framework/core/accessibility/HtcNameValuePair;->mValue:Ljava/lang/Object;

    .line 30
    return-void
.end method

.method public static toIntValueArray([Lcom/android/settings/framework/core/accessibility/HtcNameValuePair;)[I
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/settings/framework/core/accessibility/HtcNameValuePair",
            "<*>;)[I"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, list:[Lcom/android/settings/framework/core/accessibility/HtcNameValuePair;,"[Lcom/android/settings/framework/core/accessibility/HtcNameValuePair<*>;"
    array-length v3, p0

    new-array v2, v3, [I

    .line 98
    .local v2, values:[I
    array-length v3, p0

    if-lez v3, :cond_1

    .line 101
    const/4 v3, 0x0

    aget-object v3, p0, v3

    iget-object v3, v3, Lcom/android/settings/framework/core/accessibility/HtcNameValuePair;->mValue:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 104
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 105
    aget-object v3, p0, v1

    iget-object v3, v3, Lcom/android/settings/framework/core/accessibility/HtcNameValuePair;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    .end local v1           #i:I
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 112
    :try_start_0
    aget-object v3, p0, v1

    iget-object v3, v3, Lcom/android/settings/framework/core/accessibility/HtcNameValuePair;->mValue:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v3, Lcom/android/settings/framework/core/accessibility/HtcNameValuePair;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse the value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p0, v1

    iget-object v5, v5, Lcom/android/settings/framework/core/accessibility/HtcNameValuePair;->mValue:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 121
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #i:I
    :cond_1
    return-object v2
.end method

.method public static toNameArray([Lcom/android/settings/framework/core/accessibility/HtcNameValuePair;)[Ljava/lang/CharSequence;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/settings/framework/core/accessibility/HtcNameValuePair",
            "<*>;)[",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, list:[Lcom/android/settings/framework/core/accessibility/HtcNameValuePair;,"[Lcom/android/settings/framework/core/accessibility/HtcNameValuePair<*>;"
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/CharSequence;

    .line 66
    .local v1, names:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 67
    aget-object v2, p0, v0

    iget-object v2, v2, Lcom/android/settings/framework/core/accessibility/HtcNameValuePair;->mName:Ljava/lang/CharSequence;

    aput-object v2, v1, v0

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_0
    return-object v1
.end method

.method public static toValueArray([Lcom/android/settings/framework/core/accessibility/HtcNameValuePair;)[Ljava/lang/CharSequence;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/settings/framework/core/accessibility/HtcNameValuePair",
            "<*>;)[",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, list:[Lcom/android/settings/framework/core/accessibility/HtcNameValuePair;,"[Lcom/android/settings/framework/core/accessibility/HtcNameValuePair<*>;"
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/CharSequence;

    .line 82
    .local v1, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 83
    aget-object v2, p0, v0

    iget-object v2, v2, Lcom/android/settings/framework/core/accessibility/HtcNameValuePair;->mValue:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 37
    .local p0, this:Lcom/android/settings/framework/core/accessibility/HtcNameValuePair;,"Lcom/android/settings/framework/core/accessibility/HtcNameValuePair<TValueType;>;"
    iget-object v0, p0, Lcom/android/settings/framework/core/accessibility/HtcNameValuePair;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TValueType;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, this:Lcom/android/settings/framework/core/accessibility/HtcNameValuePair;,"Lcom/android/settings/framework/core/accessibility/HtcNameValuePair<TValueType;>;"
    iget-object v0, p0, Lcom/android/settings/framework/core/accessibility/HtcNameValuePair;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    .local p0, this:Lcom/android/settings/framework/core/accessibility/HtcNameValuePair;,"Lcom/android/settings/framework/core/accessibility/HtcNameValuePair<TValueType;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/core/accessibility/HtcNameValuePair;->mName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/core/accessibility/HtcNameValuePair;->mValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
