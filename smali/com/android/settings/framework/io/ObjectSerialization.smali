.class public Lcom/android/settings/framework/io/ObjectSerialization;
.super Ljava/lang/Object;
.source "ObjectSerialization.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/io/ObjectSerialization$DeserializedContent;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deserialize(Ljava/lang/String;)Lcom/android/settings/framework/io/ObjectSerialization$DeserializedContent;
    .locals 4

    new-instance v0, Lcom/android/settings/framework/io/ObjectSerialization$DeserializedContent;

    invoke-direct {v0}, Lcom/android/settings/framework/io/ObjectSerialization$DeserializedContent;-><init>()V

    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    #setter for: Lcom/android/settings/framework/io/ObjectSerialization$DeserializedContent;->mObject:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/android/settings/framework/io/ObjectSerialization$DeserializedContent;->access$002(Lcom/android/settings/framework/io/ObjectSerialization$DeserializedContent;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    #setter for: Lcom/android/settings/framework/io/ObjectSerialization$DeserializedContent;->mException:Ljava/lang/Exception;
    invoke-static {v0, v1}, Lcom/android/settings/framework/io/ObjectSerialization$DeserializedContent;->access$102(Lcom/android/settings/framework/io/ObjectSerialization$DeserializedContent;Ljava/lang/Exception;)Ljava/lang/Exception;

    goto :goto_0

    :catch_1
    move-exception v1

    #setter for: Lcom/android/settings/framework/io/ObjectSerialization$DeserializedContent;->mException:Ljava/lang/Exception;
    invoke-static {v0, v1}, Lcom/android/settings/framework/io/ObjectSerialization$DeserializedContent;->access$102(Lcom/android/settings/framework/io/ObjectSerialization$DeserializedContent;Ljava/lang/Exception;)Ljava/lang/Exception;

    goto :goto_0

    :catch_2
    move-exception v1

    #setter for: Lcom/android/settings/framework/io/ObjectSerialization$DeserializedContent;->mException:Ljava/lang/Exception;
    invoke-static {v0, v1}, Lcom/android/settings/framework/io/ObjectSerialization$DeserializedContent;->access$102(Lcom/android/settings/framework/io/ObjectSerialization$DeserializedContent;Ljava/lang/Exception;)Ljava/lang/Exception;

    goto :goto_0
.end method

.method public static serialize(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Exception;
    .locals 3

    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
