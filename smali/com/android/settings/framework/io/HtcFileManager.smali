.class public Lcom/android/settings/framework/io/HtcFileManager;
.super Ljava/lang/Object;
.source "HtcFileManager.java"


# static fields
.field private static LINE_SEPARATOR:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _copy(Ljava/io/File;Ljava/io/File;)Z
    .locals 11
    .parameter "src"
    .parameter "dest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 117
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 118
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, files:[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 127
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v9

    if-nez v9, :cond_0

    .line 175
    .end local v4           #files:[Ljava/lang/String;
    :goto_0
    return v7

    .line 133
    .restart local v4       #files:[Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v7, v4

    if-ge v5, v7, :cond_4

    .line 134
    new-instance v7, Ljava/io/File;

    aget-object v9, v4, v5

    invoke-direct {v7, p0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    aget-object v10, v4, v5

    invoke-direct {v9, p1, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v7, v9}, Lcom/android/settings/framework/io/HtcFileManager;->_copy(Ljava/io/File;Ljava/io/File;)Z

    .line 133
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 143
    .end local v4           #files:[Ljava/lang/String;
    .end local v5           #i:I
    :cond_1
    const/16 v9, 0x400

    new-array v2, v9, [B

    .line 148
    .local v2, buffer:[B
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v9

    if-nez v9, :cond_2

    .line 150
    invoke-virtual {p1, v8}, Ljava/io/File;->setWritable(Z)Z

    move-result v9

    if-nez v9, :cond_2

    .line 155
    new-instance v3, Ljava/lang/IllegalAccessException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to set the write permission.\n - file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    .line 158
    .local v3, e:Ljava/lang/Exception;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v8}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0

    .line 163
    .end local v3           #e:Ljava/lang/Exception;
    :cond_2
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 164
    .local v0, bis:Ljava/io/BufferedInputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 167
    .local v1, bos:Ljava/io/BufferedOutputStream;
    :goto_2
    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    .local v6, length:I
    const/4 v9, -0x1

    if-eq v6, v9, :cond_3

    .line 168
    invoke-virtual {v1, v2, v7, v6}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_2

    .line 172
    :cond_3
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 173
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .end local v2           #buffer:[B
    .end local v6           #length:I
    :cond_4
    move v7, v8

    .line 175
    goto :goto_0
.end method

.method public static copy(Ljava/io/File;Ljava/io/File;)Z
    .locals 4
    .parameter "src"
    .parameter "dest"

    .prologue
    const/4 v2, 0x0

    .line 70
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v2

    .line 75
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/settings/framework/io/HtcFileManager;->_copy(Ljava/io/File;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 84
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 86
    .local v1, error:Ljava/lang/StringBuffer;
    const-string v3, "\n[src]:\n   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 88
    const-string v3, "\n[src.getAbsolutePath()]:\n   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    :try_start_1
    const-string v3, "\n[src.getCanonicalPath())]:\n   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 96
    :goto_1
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    const-string v3, "\n[dest]:\n   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 100
    const-string v3, "\n[dest.getAbsolutePath()]: \n   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    :try_start_2
    const-string v3, "\n[dest.getCanonicalPath())]: \n   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 108
    :goto_2
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 105
    :catch_1
    move-exception v3

    goto :goto_2

    .line 93
    :catch_2
    move-exception v3

    goto :goto_1
.end method

.method public static ensureParentDirectory(Ljava/io/File;)Z
    .locals 3
    .parameter "file"

    .prologue
    const/4 v1, 0x0

    .line 460
    if-nez p0, :cond_1

    .line 471
    :cond_0
    :goto_0
    return v1

    .line 464
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 465
    .local v0, parent:Ljava/io/File;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 471
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static getLineSeparator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/settings/framework/io/HtcFileManager;->LINE_SEPARATOR:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 49
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/io/HtcFileManager;->LINE_SEPARATOR:Ljava/lang/String;

    .line 51
    sget-object v0, Lcom/android/settings/framework/io/HtcFileManager;->LINE_SEPARATOR:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 52
    const-string v0, "\n"

    sput-object v0, Lcom/android/settings/framework/io/HtcFileManager;->LINE_SEPARATOR:Ljava/lang/String;

    .line 55
    :cond_0
    sget-object v0, Lcom/android/settings/framework/io/HtcFileManager;->LINE_SEPARATOR:Ljava/lang/String;

    return-object v0
.end method

.method public static read(Ljava/io/File;)Ljava/lang/StringBuilder;
    .locals 7
    .parameter "file"

    .prologue
    const/4 v5, 0x0

    .line 297
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .local v4, sb:Ljava/lang/StringBuilder;
    const/16 v6, 0x400

    new-array v1, v6, [C

    .line 303
    .local v1, buffer:[C
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move-object v4, v5

    .line 318
    .end local v4           #sb:Ljava/lang/StringBuilder;
    :goto_0
    return-object v4

    .line 309
    .restart local v4       #sb:Ljava/lang/StringBuilder;
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 310
    .local v0, br:Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v0, v1}, Ljava/io/BufferedReader;->read([C)I

    move-result v3

    .local v3, length:I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_2

    .line 311
    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 314
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #length:I
    :catch_0
    move-exception v2

    .line 315
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 316
    goto :goto_0

    .line 313
    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v3       #length:I
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static read(Ljava/io/File;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 8
    .parameter "file"
    .parameter "enc"

    .prologue
    const/4 v5, 0x0

    .line 340
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    .local v4, sb:Ljava/lang/StringBuilder;
    const/16 v6, 0x400

    new-array v1, v6, [C

    .line 346
    .local v1, buffer:[C
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move-object v4, v5

    .line 362
    .end local v4           #sb:Ljava/lang/StringBuilder;
    :goto_0
    return-object v4

    .line 352
    .restart local v4       #sb:Ljava/lang/StringBuilder;
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 354
    .local v0, br:Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v0, v1}, Ljava/io/BufferedReader;->read([C)I

    move-result v3

    .local v3, length:I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_2

    .line 355
    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 358
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #length:I
    :catch_0
    move-exception v2

    .line 359
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 360
    goto :goto_0

    .line 357
    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v3       #length:I
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static read(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1
    .parameter "path"

    .prologue
    .line 275
    if-nez p0, :cond_0

    .line 276
    const/4 v0, 0x0

    .line 278
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/settings/framework/io/HtcFileManager;->read(Ljava/io/File;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method public static readLongValue(Ljava/io/File;)J
    .locals 3
    .parameter "file"

    .prologue
    .line 251
    invoke-static {p0}, Lcom/android/settings/framework/io/HtcFileManager;->read(Ljava/io/File;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/util/HtcParser;->parseLongValue(Ljava/lang/StringBuilder;)Lcom/android/settings/framework/util/HtcParser$Result;

    move-result-object v0

    .line 252
    .local v0, result:Lcom/android/settings/framework/util/HtcParser$Result;,"Lcom/android/settings/framework/util/HtcParser$Result<Ljava/lang/Long;>;"
    iget-object v1, v0, Lcom/android/settings/framework/util/HtcParser$Result;->exception:Ljava/lang/Exception;

    if-nez v1, :cond_0

    .line 253
    iget-object v1, v0, Lcom/android/settings/framework/util/HtcParser$Result;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 255
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public static readLongValue(Ljava/lang/String;)J
    .locals 2
    .parameter "path"

    .prologue
    .line 239
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/settings/framework/io/HtcFileManager;->readLongValue(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static readSingleLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "content"

    .prologue
    .line 215
    if-nez p0, :cond_1

    .line 216
    const/4 p0, 0x0

    .line 226
    .end local p0
    .local v0, lineEndAt:I
    :cond_0
    :goto_0
    return-object p0

    .line 221
    .end local v0           #lineEndAt:I
    .restart local p0
    :cond_1
    invoke-static {}, Lcom/android/settings/framework/io/HtcFileManager;->getLineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 223
    .restart local v0       #lineEndAt:I
    if-ltz v0, :cond_0

    .line 224
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static readSingleLine(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 2
    .parameter "content"

    .prologue
    .line 189
    if-nez p0, :cond_0

    .line 190
    const/4 v1, 0x0

    .line 200
    :goto_0
    return-object v1

    .line 195
    :cond_0
    invoke-static {}, Lcom/android/settings/framework/io/HtcFileManager;->getLineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 197
    .local v0, lineEndAt:I
    if-ltz v0, :cond_1

    .line 198
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 200
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static write(Ljava/io/File;Ljava/lang/String;)Z
    .locals 6
    .parameter "file"
    .parameter "content"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 386
    if-nez p0, :cond_0

    .line 387
    const-string v1, "The file can not be null."

    .line 388
    .local v1, e:Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 392
    .end local v1           #e:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 393
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-nez v4, :cond_3

    .line 395
    invoke-virtual {p0, v3}, Ljava/io/File;->setWritable(Z)Z

    move-result v4

    if-nez v4, :cond_3

    .line 400
    new-instance v1, Ljava/lang/IllegalAccessException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set the write permission.\n - file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    .line 403
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 447
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return v2

    .line 412
    :cond_1
    invoke-static {p0}, Lcom/android/settings/framework/io/HtcFileManager;->ensureParentDirectory(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 413
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create the file directory \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 421
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-nez v4, :cond_3

    .line 422
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create the file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 426
    :catch_0
    move-exception v1

    .line 427
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 433
    .end local v1           #e:Ljava/io/IOException;
    :cond_3
    :try_start_1
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 435
    .local v0, bw:Ljava/io/BufferedWriter;
    if-nez p1, :cond_4

    .line 436
    const-string p1, ""

    .line 438
    :cond_4
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 440
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move v2, v3

    .line 441
    goto :goto_0

    .line 442
    .end local v0           #bw:Ljava/io/BufferedWriter;
    :catch_1
    move-exception v1

    .line 443
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 444
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 445
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static write(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "file"
    .parameter "content"

    .prologue
    .line 372
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/android/settings/framework/io/HtcFileManager;->write(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
