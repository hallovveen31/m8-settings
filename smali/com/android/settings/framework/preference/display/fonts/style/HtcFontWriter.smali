.class public Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;
.super Ljava/lang/Object;
.source "HtcFontWriter.java"


# static fields
.field public static final FONT_DIRECTORY:Ljava/lang/String; = "fonts"

.field public static final LOC_DIRECTORY:Ljava/lang/String; = "/data/data/com.android.settings/app_fonts"

.field public static final MONOSPACE_LOC_NAME:Ljava/lang/String; = "monospace.loc"

.field public static final SANS_LOC_NAME:Ljava/lang/String; = "sans.loc"

.field public static final SERIF_LOC_NAME:Ljava/lang/String; = "serif.loc"


# instance fields
.field private final CHMOD_COMMAND_FILE:Ljava/lang/String;

.field private final CHMOD_COMMAND_FOLDER:Ljava/lang/String;

.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private fOut:Ljava/io/FileOutputStream;

.field private osw:Ljava/io/OutputStreamWriter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-class v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->TAG:Ljava/lang/String;

    .line 23
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->DEBUG:Z

    .line 32
    iput-object v1, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 33
    iput-object v1, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->osw:Ljava/io/OutputStreamWriter;

    .line 43
    const-string v0, "/system/bin/chmod 755 "

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->CHMOD_COMMAND_FOLDER:Ljava/lang/String;

    .line 44
    const-string v0, "/system/bin/chmod 644 "

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->CHMOD_COMMAND_FILE:Ljava/lang/String;

    return-void
.end method

.method private changeFilePermission(Ljava/lang/String;)V
    .locals 7
    .parameter "fontPath"

    .prologue
    .line 156
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    .line 157
    .local v2, run:Ljava/lang/Runtime;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/system/bin/chmod 644 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, s:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 159
    .local v1, myProcess:Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 160
    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I

    move-result v4

    if-eqz v4, :cond_0

    .line 161
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Cannot chmod"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 163
    .end local v1           #myProcess:Ljava/lang/Process;
    .end local v2           #run:Ljava/lang/Runtime;
    .end local v3           #s:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 164
    .local v0, e:Ljava/io/IOException;
    iget-object v4, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-changeFilePermission():Check point#1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 170
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void

    .line 166
    :catch_1
    move-exception v0

    .line 167
    .local v0, e:Ljava/lang/InterruptedException;
    iget-object v4, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-changeFilePermission():Check point#2:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private deleteFolder(Ljava/io/File;Ljava/lang/String;)Z
    .locals 6
    .parameter "FontDir"
    .parameter "folderName"

    .prologue
    .line 136
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 137
    .local v3, newDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, tmp:[Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 139
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 140
    new-instance v1, Ljava/io/File;

    aget-object v5, v4, v2

    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 141
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    .end local v1           #file:Ljava/io/File;
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    .line 148
    .end local v2           #i:I
    .local v0, bRet:Z
    :goto_1
    return v0

    .line 145
    .end local v0           #bRet:Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #bRet:Z
    goto :goto_1
.end method


# virtual methods
.method public copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 18
    .parameter "directory"
    .parameter "is"
    .parameter "destination"

    .prologue
    .line 179
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->DEBUG:Z

    if-eqz v14, :cond_0

    .line 180
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->TAG:Ljava/lang/String;

    const-string v15, "-copyFontFile()"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    move-object/from16 v10, p2

    .line 183
    .local v10, myInputStream:Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 184
    .local v11, os:Ljava/io/BufferedOutputStream;
    move-object/from16 v9, p1

    .line 185
    .local v9, myDirectory:Ljava/io/File;
    move-object/from16 v8, p3

    .line 186
    .local v8, myDestination:Ljava/lang/String;
    const-string v1, ""

    .line 189
    .local v1, absolutePath:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 190
    .local v3, dest:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 191
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 193
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 194
    new-instance v12, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v12, v14}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 196
    .end local v11           #os:Ljava/io/BufferedOutputStream;
    .local v12, os:Ljava/io/BufferedOutputStream;
    const/16 v14, 0x400

    :try_start_1
    new-array v2, v14, [B

    .line 198
    .local v2, b:[B
    const/4 v13, 0x0

    .line 199
    .local v13, read:I
    :goto_0
    invoke-virtual {v10, v2}, Ljava/io/InputStream;->read([B)I

    move-result v13

    if-lez v13, :cond_6

    .line 200
    const/4 v14, 0x0

    invoke-virtual {v12, v2, v14, v13}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 204
    .end local v2           #b:[B
    .end local v13           #read:I
    :catch_0
    move-exception v4

    move-object v11, v12

    .line 205
    .end local v3           #dest:Ljava/io/File;
    .end local v12           #os:Ljava/io/BufferedOutputStream;
    .local v4, e:Ljava/lang/Exception;
    .restart local v11       #os:Ljava/io/BufferedOutputStream;
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "-copyFontFile():Check point#1:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 208
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 209
    .local v6, length:J
    const-wide/16 v14, 0x0

    cmp-long v14, v6, v14

    if-nez v14, :cond_1

    .line 210
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 212
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    if-eqz v11, :cond_2

    .line 216
    :try_start_3
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->close()V

    .line 219
    :cond_2
    if-eqz v10, :cond_3

    .line 220
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 221
    const/4 v10, 0x0

    .line 224
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v14, :cond_4

    .line 225
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 233
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #file:Ljava/io/File;
    .end local v6           #length:J
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->changeFilePermission(Ljava/lang/String;)V

    .line 236
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 237
    .restart local v5       #file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 238
    .restart local v6       #length:J
    const-wide/16 v14, 0x0

    cmp-long v14, v6, v14

    if-nez v14, :cond_5

    .line 239
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 241
    :cond_5
    return-void

    .line 202
    .end local v5           #file:Ljava/io/File;
    .end local v6           #length:J
    .end local v11           #os:Ljava/io/BufferedOutputStream;
    .restart local v2       #b:[B
    .restart local v3       #dest:Ljava/io/File;
    .restart local v12       #os:Ljava/io/BufferedOutputStream;
    .restart local v13       #read:I
    :cond_6
    :try_start_4
    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->flush()V

    .line 203
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v14}, Ljava/io/FileOutputStream;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 215
    if-eqz v12, :cond_7

    .line 216
    :try_start_5
    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V

    .line 219
    :cond_7
    if-eqz v10, :cond_8

    .line 220
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 221
    const/4 v10, 0x0

    .line 224
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v14, :cond_9

    .line 225
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_9
    :goto_3
    move-object v11, v12

    .line 232
    .end local v12           #os:Ljava/io/BufferedOutputStream;
    .restart local v11       #os:Ljava/io/BufferedOutputStream;
    goto :goto_2

    .line 214
    .end local v2           #b:[B
    .end local v3           #dest:Ljava/io/File;
    .end local v13           #read:I
    :catchall_0
    move-exception v14

    .line 215
    :goto_4
    if-eqz v11, :cond_a

    .line 216
    :try_start_6
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->close()V

    .line 219
    :cond_a
    if-eqz v10, :cond_b

    .line 220
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 221
    const/4 v10, 0x0

    .line 224
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v15, :cond_c

    .line 225
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 214
    :cond_c
    :goto_5
    throw v14

    .line 228
    :catch_1
    move-exception v4

    .line 229
    .local v4, e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "-copyFontFile():Check point#2:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 228
    .local v4, e:Ljava/lang/Exception;
    .restart local v5       #file:Ljava/io/File;
    .restart local v6       #length:J
    :catch_2
    move-exception v4

    .line 229
    .local v4, e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "-copyFontFile():Check point#2:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 228
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #file:Ljava/io/File;
    .end local v6           #length:J
    .end local v11           #os:Ljava/io/BufferedOutputStream;
    .restart local v2       #b:[B
    .restart local v3       #dest:Ljava/io/File;
    .restart local v12       #os:Ljava/io/BufferedOutputStream;
    .restart local v13       #read:I
    :catch_3
    move-exception v4

    .line 229
    .restart local v4       #e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "-copyFontFile():Check point#2:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 214
    .end local v2           #b:[B
    .end local v4           #e:Ljava/io/IOException;
    .end local v13           #read:I
    :catchall_1
    move-exception v14

    move-object v11, v12

    .end local v12           #os:Ljava/io/BufferedOutputStream;
    .restart local v11       #os:Ljava/io/BufferedOutputStream;
    goto :goto_4

    .line 204
    .end local v3           #dest:Ljava/io/File;
    :catch_4
    move-exception v4

    goto/16 :goto_1
.end method

.method public createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 11
    .parameter "context"
    .parameter "fontName"

    .prologue
    .line 96
    iget-boolean v8, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 97
    iget-object v8, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->TAG:Ljava/lang/String;

    const-string v9, "-createFontDirectory()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    const-string v8, "fonts"

    const/4 v9, 0x1

    invoke-virtual {p1, v8, v9}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    .line 100
    .local v4, newFontDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 104
    .local v1, fontFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    .line 105
    .local v7, tmp:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v8, v7

    if-ge v2, v8, :cond_1

    .line 106
    aget-object v8, v7, v2

    invoke-direct {p0, v4, v8}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->deleteFolder(Ljava/io/File;Ljava/lang/String;)Z

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 113
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    .line 114
    .local v5, run:Ljava/lang/Runtime;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/system/bin/chmod 755 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 115
    .local v6, s:Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 116
    .local v3, myProcess:Ljava/lang/Process;
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    .line 117
    invoke-virtual {v3}, Ljava/lang/Process;->exitValue()I

    move-result v8

    if-eqz v8, :cond_2

    .line 118
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Cannot chmod"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 120
    .end local v3           #myProcess:Ljava/lang/Process;
    .end local v5           #run:Ljava/lang/Runtime;
    .end local v6           #s:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 121
    .local v0, e:Ljava/io/IOException;
    iget-object v8, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "-createFontDirectory():Check point#1:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 128
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    :goto_1
    return-object v1

    .line 123
    :catch_1
    move-exception v0

    .line 124
    .local v0, e:Ljava/lang/InterruptedException;
    iget-object v8, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "-createFontDirectory():Check point#2:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "filename"
    .parameter "directory"

    .prologue
    const/16 v5, 0x5b

    .line 50
    iget-boolean v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 51
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->TAG:Ljava/lang/String;

    const-string v4, "-writeLoc()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_1

    .line 55
    const/4 v3, 0x0

    invoke-virtual {p3, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 58
    :cond_1
    const-string v0, ""

    .line 60
    .local v0, absolutePath:Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/data/com.android.settings/app_fonts"

    invoke-direct {v1, v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .local v1, dest:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 62
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 63
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 65
    new-instance v3, Ljava/io/OutputStreamWriter;

    iget-object v4, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->osw:Ljava/io/OutputStreamWriter;

    .line 66
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->osw:Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 67
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    .line 68
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v3, :cond_2

    .line 75
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    .line 78
    :cond_2
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_3

    .line 79
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 88
    .end local v1           #dest:Ljava/io/File;
    :cond_3
    :goto_0
    const-string v3, "persist.sys.flipfontpath"

    invoke-static {v3, p3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0, v0}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->changeFilePermission(Ljava/lang/String;)V

    .line 90
    return-void

    .line 69
    :catch_0
    move-exception v2

    .line 70
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-writeLoc():Check point#1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    :try_start_3
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v3, :cond_4

    .line 75
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    .line 78
    :cond_4
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_3

    .line 79
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 81
    :catch_1
    move-exception v2

    .line 82
    .local v2, e:Ljava/io/IOException;
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-writeLoc():Check point#2:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 73
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 74
    :try_start_4
    iget-object v4, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v4, :cond_5

    .line 75
    iget-object v4, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    .line 78
    :cond_5
    iget-object v4, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_6

    .line 79
    iget-object v4, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 73
    :cond_6
    :goto_2
    throw v3

    .line 81
    :catch_2
    move-exception v2

    .line 82
    .restart local v2       #e:Ljava/io/IOException;
    iget-object v4, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-writeLoc():Check point#2:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 81
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #dest:Ljava/io/File;
    :catch_3
    move-exception v2

    .line 82
    .restart local v2       #e:Ljava/io/IOException;
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-writeLoc():Check point#2:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
