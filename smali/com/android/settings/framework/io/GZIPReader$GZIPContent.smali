.class public Lcom/android/settings/framework/io/GZIPReader$GZIPContent;
.super Ljava/lang/Object;
.source "GZIPReader.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/io/GZIPReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GZIPContent"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2acfd4c85287f395L


# instance fields
.field private mContent:Ljava/lang/StringBuffer;

.field private mException:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/framework/io/GZIPReader$GZIPContent;->mContent:Ljava/lang/StringBuffer;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/framework/io/GZIPReader$GZIPContent;Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/io/GZIPReader$GZIPContent;->mException:Ljava/lang/Exception;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/framework/io/GZIPReader$GZIPContent;)Ljava/lang/StringBuffer;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/io/GZIPReader$GZIPContent;->mContent:Ljava/lang/StringBuffer;

    return-object v0
.end method


# virtual methods
.method public getContent()Ljava/lang/StringBuffer;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/io/GZIPReader$GZIPContent;->mContent:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/io/GZIPReader$GZIPContent;->mException:Ljava/lang/Exception;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GZIPContent [mContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/io/GZIPReader$GZIPContent;->mContent:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mException="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/io/GZIPReader$GZIPContent;->mException:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
