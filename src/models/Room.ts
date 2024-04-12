export default interface Room {
    id: number;
    creatorAddress: string;
    name: string;
    description: string;
    type: string;
    password?: string;
    logoUrl: string;
    createdAt: string;
    updatedAt: string;
};
