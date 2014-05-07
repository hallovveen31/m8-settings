.class public interface abstract Lcom/android/settings/framework/core/firstpage/provider/HtcIEntryProvider;
.super Ljava/lang/Object;
.source "HtcIEntryProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Entry:",
        "Ljava/lang/Object;",
        "Entry",
        "List::Ljava/util/List",
        "<TEntry;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract addEntry(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEntry;)Z"
        }
    .end annotation
.end method

.method public abstract getEntryByAnchor(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TEntry;"
        }
    .end annotation
.end method

.method public abstract getEntryById(J)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TEntry;"
        }
    .end annotation
.end method

.method public abstract getFullEntryList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TEntry",
            "List;"
        }
    .end annotation
.end method

.method public abstract getPartialEntryList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TEntry",
            "List;"
        }
    .end annotation
.end method

.method public abstract onBuildEntryList()V
.end method

.method public abstract start()V
.end method

.method public abstract updateEntryList()V
.end method
