.class abstract Lcom/android/settings/framework/util/log/dumper/HtcAbsDumper;
.super Ljava/lang/Object;
.source "HtcAbsDumper.java"

# interfaces
.implements Lcom/android/settings/framework/util/log/dumper/HtcIDumper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/settings/framework/util/log/dumper/HtcIDumper",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final SINGLE_LINE_SEPARATOR:Ljava/lang/String; = "------------------------------------------------------------"

.field public static final TWIN_LINE_SEPARATOR:Ljava/lang/String; = "============================================================"

.field public static final UNI_INDENT:Ljava/lang/String; = "    "


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    .local p0, this:Lcom/android/settings/framework/util/log/dumper/HtcAbsDumper;,"Lcom/android/settings/framework/util/log/dumper/HtcAbsDumper<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, this:Lcom/android/settings/framework/util/log/dumper/HtcAbsDumper;,"Lcom/android/settings/framework/util/log/dumper/HtcAbsDumper<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0}, Lcom/android/settings/framework/util/log/dumper/HtcAbsDumper;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/framework/util/log/dumper/HtcAbsDumper;->dump(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, this:Lcom/android/settings/framework/util/log/dumper/HtcAbsDumper;,"Lcom/android/settings/framework/util/log/dumper/HtcAbsDumper<TT;>;"
    .local p2, object:Ljava/lang/Object;,"TT;"
    const-string v0, ""

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/settings/framework/util/log/dumper/HtcAbsDumper;->dump(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "tag"
    .parameter "indent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, this:Lcom/android/settings/framework/util/log/dumper/HtcAbsDumper;,"Lcom/android/settings/framework/util/log/dumper/HtcAbsDumper<TT;>;"
    .local p3, object:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/framework/util/log/dumper/HtcAbsDumper;->toString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public final toString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .parameter "indent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, this:Lcom/android/settings/framework/util/log/dumper/HtcAbsDumper;,"Lcom/android/settings/framework/util/log/dumper/HtcAbsDumper<TT;>;"
    .local p2, object:Ljava/lang/Object;,"TT;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    .end local p1
    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, PREFIX:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .local v1, builder:Ljava/lang/StringBuilder;
    if-nez p2, :cond_1

    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Dump null (type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/util/log/dumper/HtcAbsDumper;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 84
    :goto_1
    return-object v2

    .line 55
    .end local v0           #PREFIX:Ljava/lang/String;
    .end local v1           #builder:Ljava/lang/StringBuilder;
    .restart local p1
    :cond_0
    const-string p1, ""

    goto :goto_0

    .line 73
    .end local p1
    .restart local v0       #PREFIX:Ljava/lang/String;
    .restart local v1       #builder:Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Dump "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p0, v1, v0, p2}, Lcom/android/settings/framework/util/log/dumper/HtcAbsDumper;->appendIntrinsicInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
