.class public final Lcom/android/systemui/Dependency$DependencyKey;
.super Ljava/lang/Object;
.source "Dependency.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/Dependency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DependencyKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mDisplayName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 380
    .local p0, "this":Lcom/android/systemui/Dependency$DependencyKey;, "Lcom/android/systemui/Dependency$DependencyKey<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    iput-object p1, p0, Lcom/android/systemui/Dependency$DependencyKey;->mDisplayName:Ljava/lang/String;

    .line 382
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 386
    .local p0, "this":Lcom/android/systemui/Dependency$DependencyKey;, "Lcom/android/systemui/Dependency$DependencyKey<TV;>;"
    iget-object v0, p0, Lcom/android/systemui/Dependency$DependencyKey;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method
