.class public Lcom/android/settings/framework/io/GZIPReader;
.super Ljava/lang/Object;
.source "GZIPReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/io/GZIPReader$GZIPContent;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContent(Ljava/lang/String;)Lcom/android/settings/framework/io/GZIPReader$GZIPContent;
    .locals 12

    new-instance v7, Lcom/android/settings/framework/io/GZIPReader$GZIPContent;

    invoke-direct {v7}, Lcom/android/settings/framework/io/GZIPReader$GZIPContent;-><init>()V

    if-nez p0, :cond_0

    const-string v3, "The filename can not be null."

    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/android/settings/framework/io/GZIPReader$GZIPContent;->mException:Ljava/lang/Exception;
    invoke-static {v7, v10}, Lcom/android/settings/framework/io/GZIPReader$GZIPContent;->access$002(Lcom/android/settings/framework/io/GZIPReader$GZIPContent;Ljava/lang/Exception;)Ljava/lang/Exception;

    :goto_0
    return-object v7

    :cond_0
    const/4 v8, 0x0

    const/16 v10, 0x800

    new-array v0, v10, [C

    const/4 v6, 0x1

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v10, ".gz"

    invoke-virtual {p0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v6, 0x1

    new-instance v9, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v9, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v8, v9

    :goto_1
    :try_start_2
    invoke-virtual {v5, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    const/4 v10, -0x1

    if-eq v1, v10, :cond_2

    #getter for: Lcom/android/settings/framework/io/GZIPReader$GZIPContent;->mContent:Ljava/lang/StringBuffer;
    invoke-static {v7}, Lcom/android/settings/framework/io/GZIPReader$GZIPContent;->access$100(Lcom/android/settings/framework/io/GZIPReader$GZIPContent;)Ljava/lang/StringBuffer;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v0, v11, v1}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_2
    #setter for: Lcom/android/settings/framework/io/GZIPReader$GZIPContent;->mException:Ljava/lang/Exception;
    invoke-static {v7, v2}, Lcom/android/settings/framework/io/GZIPReader$GZIPContent;->access$002(Lcom/android/settings/framework/io/GZIPReader$GZIPContent;Ljava/lang/Exception;)Ljava/lang/Exception;

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :try_start_3
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    if-eqz v6, :cond_3

    invoke-virtual {v8}, Ljava/util/zip/GZIPInputStream;->close()V

    :cond_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_1
    move-exception v2

    :goto_3
    #setter for: Lcom/android/settings/framework/io/GZIPReader$GZIPContent;->mException:Ljava/lang/Exception;
    invoke-static {v7, v2}, Lcom/android/settings/framework/io/GZIPReader$GZIPContent;->access$002(Lcom/android/settings/framework/io/GZIPReader$GZIPContent;Ljava/lang/Exception;)Ljava/lang/Exception;

    goto :goto_0

    :catch_2
    move-exception v2

    :goto_4
    #setter for: Lcom/android/settings/framework/io/GZIPReader$GZIPContent;->mException:Ljava/lang/Exception;
    invoke-static {v7, v2}, Lcom/android/settings/framework/io/GZIPReader$GZIPContent;->access$002(Lcom/android/settings/framework/io/GZIPReader$GZIPContent;Ljava/lang/Exception;)Ljava/lang/Exception;

    goto :goto_0

    :catch_3
    move-exception v2

    move-object v8, v9

    goto :goto_4

    :catch_4
    move-exception v2

    move-object v8, v9

    goto :goto_3

    :catch_5
    move-exception v2

    move-object v8, v9

    goto :goto_2
.end method
