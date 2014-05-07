.class public Lcom/android/settings/framework/util/HtcParser;
.super Ljava/lang/Object;
.source "HtcParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/util/HtcParser$Result;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static parseLongValue(Ljava/lang/String;)Lcom/android/settings/framework/util/HtcParser$Result;
    .locals 7
    .parameter "content"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/settings/framework/util/HtcParser$Result",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    if-nez p0, :cond_0

    .line 57
    new-instance v4, Lcom/android/settings/framework/util/HtcParser$Result;

    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "The content is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/android/settings/framework/util/HtcParser$Result;-><init>(Ljava/lang/Exception;)V

    .line 78
    :goto_0
    return-object v4

    .line 61
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 62
    .local v2, length:I
    const/4 v0, 0x0

    .local v0, begin:I
    :goto_1
    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 66
    :cond_1
    move v1, v0

    .local v1, end:I
    :goto_2
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 70
    :cond_2
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, value:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 74
    new-instance v4, Lcom/android/settings/framework/util/HtcParser$Result;

    new-instance v5, Ljava/lang/NumberFormatException;

    const-string v6, "There is no long value in the content."

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/android/settings/framework/util/HtcParser$Result;-><init>(Ljava/lang/Exception;)V

    goto :goto_0

    .line 78
    :cond_3
    new-instance v4, Lcom/android/settings/framework/util/HtcParser$Result;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settings/framework/util/HtcParser$Result;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static parseLongValue(Ljava/lang/StringBuilder;)Lcom/android/settings/framework/util/HtcParser$Result;
    .locals 1
    .parameter "content"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            ")",
            "Lcom/android/settings/framework/util/HtcParser$Result",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/util/HtcParser;->parseLongValue(Ljava/lang/String;)Lcom/android/settings/framework/util/HtcParser$Result;

    move-result-object v0

    return-object v0
.end method
