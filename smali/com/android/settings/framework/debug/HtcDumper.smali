.class public Lcom/android/settings/framework/debug/HtcDumper;
.super Ljava/lang/Object;
.source "HtcDumper.java"


# static fields
.field private static final DEFAULT_COLUMN_WIDTH:I = 0x14

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/android/settings/framework/debug/HtcDumper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/debug/HtcDumper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 38
    sget-object v0, Lcom/android/settings/framework/debug/HtcDumper;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/android/settings/framework/debug/HtcDumper;->dump(Ljava/lang/String;Landroid/database/Cursor;[I)V

    .line 39
    return-void
.end method

.method public static dump(Landroid/database/Cursor;[I)V
    .locals 1
    .parameter "cursor"
    .parameter "specificFieldWidths"

    .prologue
    .line 47
    sget-object v0, Lcom/android/settings/framework/debug/HtcDumper;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/settings/framework/debug/HtcDumper;->dump(Ljava/lang/String;Landroid/database/Cursor;[I)V

    .line 48
    return-void
.end method

.method public static dump(Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 6
    .parameter "tag"
    .parameter "cursor"

    .prologue
    .line 58
    if-nez p1, :cond_1

    .line 59
    const-string v4, "The cursor is null."

    invoke-static {p0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    return-void

    .line 63
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    .line 68
    .local v0, columnCount:I
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, line:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    :cond_2
    invoke-static {p0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_0

    .line 76
    const-string v3, ""

    .line 77
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_4

    .line 82
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 87
    :goto_3
    add-int/lit8 v4, v0, -0x1

    if-eq v2, v4, :cond_3

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 77
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, e:Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "[Blob]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 91
    .end local v1           #e:Ljava/lang/RuntimeException;
    :cond_4
    invoke-static {p0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1
.end method

.method public static dump(Ljava/lang/String;Landroid/database/Cursor;[I)V
    .locals 8
    .parameter "tag"
    .parameter "cursor"
    .parameter "specificFieldWidths"

    .prologue
    .line 104
    if-nez p1, :cond_1

    .line 105
    const-string v6, "The cursor is null."

    invoke-static {p0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    return-void

    .line 109
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    .line 110
    .local v0, columnCount:I
    invoke-static {p2, v0}, Lcom/android/settings/framework/debug/HtcDumper;->getFieldWidths([II)[I

    move-result-object v2

    .line 115
    .local v2, fieldWidths:[I
    const-string v5, ""

    .line 116
    .local v5, line:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 122
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v6

    aget v7, v2, v3

    invoke-static {v6, v7}, Lcom/android/settings/framework/debug/HtcDumper;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, item:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v2, v3

    invoke-static {v4, v7}, Lcom/android/settings/framework/debug/HtcDumper;->paddingSpacesAtRight(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 125
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 116
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 127
    .end local v4           #item:Ljava/lang/String;
    :cond_2
    invoke-static {p0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_0

    .line 131
    const-string v5, ""

    .line 132
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_3

    .line 134
    :try_start_0
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aget v7, v2, v3

    invoke-static {v6, v7}, Lcom/android/settings/framework/debug/HtcDumper;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 135
    .restart local v4       #item:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v2, v3

    invoke-static {v4, v7}, Lcom/android/settings/framework/debug/HtcDumper;->paddingSpacesAtRight(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 141
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 132
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 136
    .end local v4           #item:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 137
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v6, "[Blob]"

    aget v7, v2, v3

    invoke-static {v6, v7}, Lcom/android/settings/framework/debug/HtcDumper;->paddingSpacesAtRight(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 138
    .restart local v4       #item:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v2, v3

    invoke-static {v4, v7}, Lcom/android/settings/framework/debug/HtcDumper;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 143
    .end local v1           #e:Ljava/lang/RuntimeException;
    .end local v4           #item:Ljava/lang/String;
    :cond_3
    invoke-static {p0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1
.end method

.method private static getFieldWidths([II)[I
    .locals 6
    .parameter "specificFieldWidths"
    .parameter "columnCount"

    .prologue
    const/16 v5, 0x14

    .line 150
    new-array v0, p1, [I

    .line 153
    .local v0, fieldWidths:[I
    if-eqz p0, :cond_1

    array-length v3, p0

    if-gt v3, p1, :cond_1

    .line 156
    array-length v3, v0

    array-length v4, p0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 160
    .local v2, minLength:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 161
    aget v3, p0, v1

    aput v3, v0, v1

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    :cond_0
    :goto_1
    if-ge v1, p1, :cond_2

    .line 166
    aput v5, v0, v1

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 172
    .end local v1           #i:I
    .end local v2           #minLength:I
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 173
    aput v5, v0, v1

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 176
    :cond_2
    return-object v0
.end method

.method private static paddingSpacesAtRight(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "str"
    .parameter "width"

    .prologue
    .line 206
    if-nez p0, :cond_0

    .line 207
    const/4 v3, 0x0

    .line 221
    :goto_0
    return-object v3

    .line 210
    :cond_0
    if-gez p1, :cond_1

    .line 211
    const-string v1, "The width must be equal to or greater than 0."

    .line 212
    .local v1, msg:Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 215
    .end local v1           #msg:Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 217
    .local v2, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    sub-int v0, p1, v3

    .local v0, i:I
    :goto_1
    if-lez v0, :cond_2

    .line 218
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 217
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 221
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static truncate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "str"
    .parameter "width"

    .prologue
    .line 186
    if-nez p0, :cond_0

    .line 187
    const/4 v2, 0x0

    .line 196
    :goto_0
    return-object v2

    .line 190
    :cond_0
    if-gez p1, :cond_1

    .line 191
    const-string v1, "The width must be equal to or greater than 0."

    .line 192
    .local v1, msg:Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 195
    .end local v1           #msg:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 196
    .local v0, minWidth:I
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
