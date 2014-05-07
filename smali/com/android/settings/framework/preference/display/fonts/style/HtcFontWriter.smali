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

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->DEBUG:Z

    iput-object v1, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->fOut:Ljava/io/FileOutputStream;

    iput-object v1, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->osw:Ljava/io/OutputStreamWriter;

    const-string v0, "/system/bin/chmod 755 "

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->CHMOD_COMMAND_FOLDER:Ljava/lang/String;

    const-string v0, "/system/bin/chmod 644 "

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->CHMOD_COMMAND_FILE:Ljava/lang/String;

    return-void
.end method

.method private changeFilePermission(Ljava/lang/String;)V
    .locals 7

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/system/bin/chmod 644 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/io/IOException;

    const-string v5, "Cannot chmod"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

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

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void

    :catch_1
    move-exception v0

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

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private deleteFolder(Ljava/io/File;Ljava/lang/String;)Z
    .locals 6

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_0

    new-instance v1, Ljava/io/File;

    aget-object v5, v4, v2

    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->DEBUG:Z

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->TAG:Ljava/lang/String;

    const-string v15, "-copyFontFile()"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v10, p2

    const/4 v11, 0x0

    move-object/from16 v9, p1

    move-object/from16 v8, p3

    const-string v1, ""

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->fOut:Ljava/io/FileOutputStream;

    new-instance v12, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v12, v14}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const/16 v14, 0x400

    :try_start_1
    new-array v2, v14, [B

    const/4 v13, 0x0

    :goto_0
    invoke-virtual {v10, v2}, Ljava/io/InputStream;->read([B)I

    move-result v13

    if-lez v13, :cond_6

    const/4 v14, 0x0

    invoke-virtual {v12, v2, v14, v13}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v11, v12

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

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v14, 0x0

    cmp-long v14, v6, v14

    if-nez v14, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v11, :cond_2

    :try_start_3
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->close()V

    :cond_2
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    const/4 v10, 0x0

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->changeFilePermission(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v14, 0x0

    cmp-long v14, v6, v14

    if-nez v14, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_5
    return-void

    :cond_6
    :try_start_4
    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->flush()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz v12, :cond_7

    :try_start_5
    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V

    :cond_7
    if-eqz v10, :cond_8

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    const/4 v10, 0x0

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_9
    :goto_3
    move-object v11, v12

    goto :goto_2

    :catchall_0
    move-exception v14

    :goto_4
    if-eqz v11, :cond_a

    :try_start_6
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->close()V

    :cond_a
    if-eqz v10, :cond_b

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    const/4 v10, 0x0

    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_c
    :goto_5
    throw v14

    :catch_1
    move-exception v4

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

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :catch_2
    move-exception v4

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

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    :catch_3
    move-exception v4

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

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :catchall_1
    move-exception v14

    move-object v11, v12

    goto :goto_4

    :catch_4
    move-exception v4

    goto/16 :goto_1
.end method

.method public createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 11

    iget-boolean v8, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->DEBUG:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->TAG:Ljava/lang/String;

    const-string v9, "-createFontDirectory()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v8, "fonts"

    const/4 v9, 0x1

    invoke-virtual {p1, v8, v9}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x0

    :goto_0
    array-length v8, v7

    if-ge v2, v8, :cond_1

    aget-object v8, v7, v2

    invoke-direct {p0, v4, v8}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->deleteFolder(Ljava/io/File;Ljava/lang/String;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

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

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v3}, Ljava/lang/Process;->exitValue()I

    move-result v8

    if-eqz v8, :cond_2

    new-instance v8, Ljava/io/IOException;

    const-string v9, "Cannot chmod"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

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

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return-object v1

    :catch_1
    move-exception v0

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

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/16 v5, 0x5b

    iget-boolean v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->DEBUG:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->TAG:Ljava/lang/String;

    const-string v4, "-writeLoc()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p3, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    :cond_1
    const-string v0, ""

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/data/com.android.settings/app_fonts"

    invoke-direct {v1, v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->fOut:Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/OutputStreamWriter;

    iget-object v4, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->osw:Ljava/io/OutputStreamWriter;

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

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    iget-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    :cond_2
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_3
    :goto_0
    const-string v3, "persist.sys.flipfontpath"

    invoke-static {v3, p3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->changeFilePermission(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v2

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

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    :cond_4
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

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

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_4
    iget-object v4, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    :cond_5
    iget-object v4, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/settings/framework/preference/display/fonts/style/HtcFontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_6
    :goto_2
    throw v3

    :catch_2
    move-exception v2

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

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v2

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
